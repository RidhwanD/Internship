/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package driver;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Emp. Elesar II
 */

public class Database implements ActionListener{
    private String dbUser = "root";
    private String dbPass = "";
    private Statement stmt = null;
    private Connection con = null;
    private ResultSet rs = null;
    private InterfaceGUI view;

    public Database() {
        view = new InterfaceGUI();
        view.setVisible(true);
        view.addListener(this);
        view.addToTextBox("Starting Application\n");
        try {
            Class.forName("org.gjt.mm.mysql.Driver");
        } catch (Exception e) {
            view.addToTextBox(e.getMessage()+"\n");
        }
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost/csschedule", dbUser, dbPass);
            view.addToTextBox("Application Started");
        } catch (Exception e) {
            view.addToTextBox(e.getMessage()+"\n");
        }
    }

    public ResultSet getData(String SQLString) {
        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(SQLString);
        } catch (Exception e) {
            view.addToTextBox(e.getMessage()+"\n");
        }
        return rs;
    }

    public void query(String SQLString) throws SQLException {
        try {
            stmt = con.createStatement();
            stmt.executeUpdate(SQLString);
        } catch (SQLException c) {
            view.addToTextBox(c.getMessage()+"\n");
        }
    }
    
    public String getDeskripsi(int idTask){
        String str = "Select deskripsi from task where idtask = "+idTask;
        ResultSet rs = getData(str);
        String a = "";
        try {
            while(rs.next()){
                a = rs.getString("deskripsi");
            }
        } catch (SQLException ex) {
            view.addToTextBox(ex.getMessage()+"\n");
        }
        return a;
    }
    
    public void getKontak(){
        String s = "";
        String str = "Select kontak from pengawas";
        ResultSet rs = getData(str);
        try {
            while(rs.next()){
                s = rs.getString("kontak");
            }
        } catch (SQLException ex) {
            view.addToTextBox(ex.getMessage()+"\n");
        }
        view.setKontak(s);
    }
    
    public ArrayList<Actual> getActual(String date){
        ArrayList<Actual> a = new ArrayList<>();
        String str = "Select id, idTask, namaruangan, area, namaPegawai, kontak, occurence, starttime, endtime from actual where exedate = '"+date.substring(4)+"' and status_sms=0";
        ResultSet rs = getData(str);
        try {
            while(rs.next()){
                Actual s = new Actual(rs.getInt("id"),rs.getInt("idTask"),rs.getString("namaruangan"),rs.getString("area"),rs.getString("namaPegawai"),rs.getString("kontak"),rs.getInt("occurence"),rs.getString("starttime"),rs.getString("endtime"));
                a.add(s);
            }
        } catch (SQLException ex) {
            view.addToTextBox(ex.getMessage()+"\n");
        }
        return a;
    }
    
    public ArrayList<Actual> getLate(String date){
        ArrayList<Actual> a = new ArrayList<>();
        String str = "Select id, idTask, namaruangan, area, namaPegawai, kontak, occurence, starttime, endtime from actual where exedate = '"+date.substring(4)+"' and status_sms=1 and status=0";
        ResultSet rs = getData(str);
        try {
            while(rs.next()){
                Actual s = new Actual(rs.getInt("id"),rs.getInt("idTask"),rs.getString("namaruangan"),rs.getString("area"),rs.getString("namaPegawai"),rs.getString("kontak"),rs.getInt("occurence"),rs.getString("starttime"),rs.getString("endtime"));
                a.add(s);
            }
        } catch (SQLException ex) {
            view.addToTextBox(ex.getMessage()+"\n");
        }
        return a;
    }
    
    public boolean isExist(String date){
        String str = "Select count(*) as num from actual where exedate = '"+date.substring(4)+"';";
        ResultSet rs = getData(str);
        int num = 0;
        try {
            while(rs.next()){
                num = rs.getInt("num");
            }
        } catch (SQLException ex) {
            view.addToTextBox(ex.getMessage()+"\n");
        }
        if (num > 0){
            return true;
        } else {
            return false;
        }
    }
    
    public boolean isEarlier(String timeChecked, String timeComp){
        if (Integer.parseInt(timeChecked.substring(0,2))<Integer.parseInt(timeComp.substring(0,2))) return true;
        else if (timeChecked.substring(0,2).equals(timeComp.substring(0,2))) {
            if (Integer.parseInt(timeChecked.substring(3))<Integer.parseInt(timeComp.substring(3))) return true;
        }
        return false;
    }
    
    public String addTime(String time, int minute){
        int menit = Integer.parseInt(time.substring(3));
        int jam = Integer.parseInt(time.substring(0,2));
        menit += minute;
        while (menit >= 60){
            menit -= 60;
            jam++;
        }
        String newTime = String.format("%02d", jam)+":"+String.format("%02d", menit);
        return newTime;
    }
    
    public String substractTime(String time, int minute){
        int menit = Integer.parseInt(time.substring(3));
        int jam = Integer.parseInt(time.substring(0,2));
        menit -= minute;
        while (menit < 0){
            menit += 60;
            jam--;
        }
        String newTime = String.format("%02d", jam)+":"+String.format("%02d", menit);
        return newTime;
    }
    
    public void sendSMS(int id, String pic, String ruangan, String area, String start, String end, String kontak){
        String task = this.getDeskripsi(id);
        String message = "Dear "+pic+", jadwal Anda pada "+start+"-"+end+" adalah "+task+" di "+ruangan+" "+area+". Jika telah selesai, balas: "+id+"_Done. Selamat Bekerja";
        String s = "INSERT INTO `outbox` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `Class`, `TextDecoded`, `ID`, `MultiPart`, `RelativeValidity`, `SenderID`, `SendingTimeOut`, `DeliveryReport`, `CreatorID`) VALUES (CURRENT_TIMESTAMP, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '"+kontak+"', 'Default_No_Compression', NULL, '-1', '"+message+"', NULL, 'false', '-1', NULL, '0000-00-00 00:00:00', 'default', '');";
        try {
            query(s);
        } catch (SQLException ex) {
            view.addToTextBox(ex.getMessage()+"\n");
        }
    }
    
    public void sendNotice(String ruangan, String area, String start, String kontak, String nama){
        String ktk = "";
        String str = "Select kontak from pengawas";
        ResultSet rs = getData(str);
        try {
            while(rs.next()){
                ktk = rs.getString("kontak");
            }
        } catch (SQLException ex) {
            view.addToTextBox(ex.getMessage()+"\n");
        }
        
        String message = "Tugas di "+ruangan+" "+area+", Waktu Mulai = "+start+" oleh Nama = "+nama+", Kontak = "+kontak+" Terlambat Selesai atau Belum Dikerjakan";
        String s = "INSERT INTO `outbox` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `Class`, `TextDecoded`, `ID`, `MultiPart`, `RelativeValidity`, `SenderID`, `SendingTimeOut`, `DeliveryReport`, `CreatorID`) VALUES (CURRENT_TIMESTAMP, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '"+ktk+"', 'Default_No_Compression', NULL, '-1', '"+message+"', NULL, 'false', '-1', NULL, '0000-00-00 00:00:00', 'default', '');";
        try {
            query(s);
        } catch (SQLException ex) {
            view.addToTextBox(ex.getMessage()+"\n");
        }
    }
    
    public void updateTable(String date, int id, int occ, String kontak){
        String s = "Update actual set status_sms = 1 where exedate = '"+date+"' and idTask = "+id+" and occurence = "+occ+" and kontak = '"+kontak+"'";
        try {
            query(s);
        } catch (SQLException ex) {
            view.addToTextBox(ex.getMessage()+"\n");
        }
    }
    
    public void inputToActual(String date, String day){
        SimpleDateFormat time = new SimpleDateFormat("HH:mm");
        String ti = time.format(new Date());
        String s = "SELECT idTask, koderuangan, namaRuangan, area, shift, duration, occurence, starttime, endtime FROM task natural join ruangan natural join detailtask where shift like '"+day+"%' ORDER BY shift";
        ResultSet rs = getData(s);
        try {
            while(rs.next()){
                boolean lewat = false;
                if (isEarlier(rs.getString("starttime"),ti)) lewat = true;
                s = "select namaPegawai, kontak from pegawai natural join shiftpegawai where shift = '"+rs.getString("shift")+"' and area = (select area from ruangan where kodeRuangan = '"+rs.getString("koderuangan")+"')";
                ResultSet rs2 = getData(s);
                while(rs2.next()){
                    s = "INSERT INTO actual(idTask,exeDate,namaRuangan,area,shift,namaPegawai, kontak,duration,occurence,startTime,endTime,actEndTime,status,delay,status_sms)"
                            + " VALUES ("+rs.getInt("idTask")+",'"+date+"','"+rs.getString("namaRuangan")+"','"+rs.getString("area")+"','"
                            +rs.getString("shift")+"','"+rs2.getString("namaPegawai")+"','"+rs2.getString("kontak")+"',"
                            +rs.getInt("duration")+","+rs.getString("occurence")+",'"+rs.getString("starttime")+"','"
                            +rs.getString("endtime")+"',null,0,0,"+lewat+")";
                    query(s);
                }
            }
        } catch (SQLException ex) {
            view.addToTextBox(ex.getMessage()+"\n");
        }
    }
    
    public void endDay(String date){
        String s = "Update actual set status_sms = 1 where exedate = '"+date+"'";
        try {
            query(s);
        } catch (SQLException ex) {
            view.addToTextBox(ex.getMessage()+"\n");
        }
    }
    
    public boolean isInBetween(String start, String end, String time){
        if (start.substring(0,2).equals(end.substring(0,2))){
            if (start.substring(0,2).equals(time.substring(0,2))){
                if ((Integer.parseInt(time.substring(3)) >= Integer.parseInt(start.substring(3))) && ((Integer.parseInt(time.substring(3)) <= Integer.parseInt(end.substring(3)))))
                    return true;
            }
        } else {
            if ((start.substring(0,2).equals(time.substring(0,2))) && (Integer.parseInt(start.substring(3)) <= Integer.parseInt(time.substring(3)))) {return true;}
            else if ((end.substring(0,2).equals(time.substring(0,2))) && (Integer.parseInt(end.substring(3)) >= Integer.parseInt(time.substring(3)))) return true;
        }
        return false;
    }
    
    public void loading(){
        view.addToTextBox2(".");
    }
    
    public void SMStoDB(){
        SimpleDateFormat s = new SimpleDateFormat("dd-MM-YYYY");
        String now = s.format(new Date());
        SimpleDateFormat time = new SimpleDateFormat("HH:mm");
        String ti = time.format(new Date());
        ArrayList<String> pesanMasuk = new ArrayList<>();
        String str = "SELECT ReceivingDateTime, TextDecoded, SenderNumber from inbox where Processed = 'false'";
        ResultSet rs = getData(str);
        try {
            while(rs.next()){
                String notelp = "0"+rs.getString("SenderNumber").substring(3);
                String[] pesan = rs.getString("TextDecoded").split("_");
                if (pesan.length > 1){
                    if (pesan[0].toLowerCase().equals("task")){
                        str = "SELECT namaruangan, starttime, endtime, status from actual where exedate='"+now+"' and shift='"+pesan[1]+"' and area='"+pesan[2]+"' ORDER BY starttime";
                        ResultSet rs2 = getData(str);
                        String ms = "Tugas anda selanjutnya.";
                        boolean loop = false;
                        int i = 0;
                        while(rs2.next()){
                            if (isEarlier(ti,rs2.getString("starttime")) && i < 2){
                                loop = true;
                                ms += " Ruangan: "+rs2.getString("namaruangan")+" Jam: "+rs2.getString("starttime")+"-"+rs2.getString("endtime");
                                i++;
                            }
                        }
                        if(!loop) ms += "Tidak Ada";
                        str = "INSERT INTO `outbox` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `Class`, `TextDecoded`, `ID`, `MultiPart`, `RelativeValidity`, `SenderID`, `SendingTimeOut`, `DeliveryReport`, `CreatorID`) VALUES (CURRENT_TIMESTAMP, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '"+notelp+"', 'Default_No_Compression', NULL, '-1', '"+ms+"', NULL, 'false', '-1', NULL, '0000-00-00 00:00:00', 'default', '');";
                        query(str);
                        str = "update inbox set Processed = 'true' where ReceivingDateTime = '"+rs.getString("ReceivingDateTime")+"'";
                        query(str);
                    } else if (pesan[1].toLowerCase().equals("done")){
                        str = "SELECT idtask, namaruangan, shift, namapegawai, endtime, status from actual where id = "+Integer.parseInt(pesan[0]);
                        ResultSet rs2 = getData(str);
                        boolean late = false;
                        while(rs2.next()){
                            String end = rs2.getString("endtime");
                            if (isEarlier(addTime(end,1), ti)&&!rs2.getBoolean("status")) {
                                late = true;
                            }
                            String stat= "";
                            if(late) stat = "Late"; else stat = "On Time";
                            if (!rs2.getBoolean("status")){
                                str = "update actual set status_sms = 1, status = 1, delay = "+late+", actendtime = '"+ti+"' where id = "+Integer.parseInt(pesan[0]);
                                query(str);
                                String task = this.getDeskripsi(rs2.getInt("idtask"));
                                view.addToTextBox("\nA Task Done!\nRuangan: "+rs2.getString("namaruangan")+"\nShift: "+rs2.getString("shift")
                                        +"\nPegawai: "+rs2.getString("namapegawai")+"\nStatus: "+stat+"\n");
                            }
                            str = "update inbox set Processed = 'true' where ReceivingDateTime = '"+rs.getString("ReceivingDateTime")+"'";
                            query(str);
                            str = "INSERT INTO `outbox` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `Class`, `TextDecoded`, `ID`, `MultiPart`, `RelativeValidity`, `SenderID`, `SendingTimeOut`, `DeliveryReport`, `CreatorID`) VALUES (CURRENT_TIMESTAMP, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '"+notelp+"', 'Default_No_Compression', NULL, '-1', 'Terima Kasih Telah Mengerjakan Tugas', NULL, 'false', '-1', NULL, '0000-00-00 00:00:00', 'default', '');";
                            query(str);
                        }
                    }
                }
                
            }
        } catch (SQLException ex) {
            view.addToTextBox(ex.getMessage()+"\n");
        }
        
    }
    
    public void dbToSMS(){
        SimpleDateFormat times = new SimpleDateFormat("HH:mm:ss");
        view.addToTextBox("\n"+times.format(new Date())+": Checking Database");
        SimpleDateFormat s = new SimpleDateFormat("E dd-MM-YYYY");
        String now = s.format(new Date());
        String shift = "";
        if (now.substring(0, 3).equals("Sat")){
            shift = "Sabtu";
        } else if (now.substring(0, 3).equals("Sun")){
            shift = "Minggu";
        } else {
            shift = "Shift";
        }
        if (isExist(now)){
            ArrayList<Actual> data = this.getActual(now);
            SimpleDateFormat time = new SimpleDateFormat("HH:mm");
            String ti = time.format(new Date());
            for (int i = 0; i < data.size(); i++){
                if (isInBetween(this.substractTime(data.get(i).getStarttime(),2),data.get(i).getEndtime(),ti)){
                    view.addToTextBox("\n"+times.format(new Date())+": Ada Task");
                    this.sendSMS(data.get(i).getId(), data.get(i).getNamaPegawai(),data.get(i).getRuangan(),data.get(i).getArea(), data.get(i).getStarttime(), data.get(i).getEndtime(),data.get(i).getKontak());
                    this.updateTable(now.substring(4),data.get(i).getIdTask(), data.get(i).getOcc(), data.get(i).getKontak());
                    view.addToTextBox("\n"+times.format(new Date())+": Sending SMS");
                }
            }
            if (this.isEarlier("22:00", ti)){
                this.endDay(now.substring(4));
                //System.exit(0);
            }
//            ArrayList<Actual> late = this.getLate(now);
//            for (int i = 0; i < late.size(); i++){
//                if (addTime(late.get(i).getEndtime(),120).equals(ti)){
//                    view.addToTextBox("\n"+times.format(new Date())+": Ada Task Terlambat");
//                    this.sendNotice(late.get(i).getRuangan(),data.get(i).getArea(), late.get(i).getStarttime(),late.get(i).getKontak(),late.get(i).getNamaPegawai());
//                    view.addToTextBox("\n"+times.format(new Date())+": Sending SMS to Pengawas");
//                }
//            }
        } else {
            this.inputToActual(now.substring(4),shift);
            view.addToTextBox("\n"+times.format(new Date())+": Input Data for "+s.format(new Date()));
        }
        view.addToTextBox("\n"+times.format(new Date())+": Done Checking Database\n");
    }

    public void updateDelay(){
        String str = "SELECT id, endtime FROM actual WHERE status = 0 and delay = 0";
        SimpleDateFormat time = new SimpleDateFormat("HH:mm");
        String ti = time.format(new Date());
        ResultSet rs = getData(str);
        try {
            while (rs.next()){
                if (this.isEarlier(rs.getString("endtime"),ti)){
                    String s = "update actual set delay = 1 where id = "+rs.getInt("id");
                    query(s);
                }
            }
        } catch (SQLException ex) {
            view.addToTextBox(ex.getMessage()+"\n");
        }
    }
    
    public void updateKontak(){
        String kontak = view.getKontak();
        String s = "truncate table pengawas";
        try {
            query(s);
        } catch (SQLException ex) {
            view.addToTextBox(ex.getMessage()+"\n");
        }
        s = "insert into pengawas values('"+kontak+"')";
        try {
            query(s);
        } catch (SQLException ex) {
            view.addToTextBox(ex.getMessage()+"\n");
        }
    }
    
    @Override
    public void actionPerformed(ActionEvent e) {
        Object source = e.getSource();
        if (source.equals(view.getButtonEdit())) {
            if (view.getEdit()){
                view.activateEdit();
                view.setButtonText("Submit");
            } else {
                view.deactivateEdit();
                view.setButtonText("Edit");
                this.updateKontak();
                this.getKontak();
            }
        }
    }
}
