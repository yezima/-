import java.util.*;
class Interval {
      int start;
      int end;
      Interval() { start = 0; end = 0; }
      Interval(int s, int e) { start = s; end = e; }
 }
public class Main {
    public ArrayList<Interval> merge(ArrayList<Interval> intervals) {
        ArrayList<Interval> res = new ArrayList<>();
        Collections.sort(intervals,(a,b)->a.start-b.start);
        int len = intervals.size();
        int i = 0;
        while (i < len) {
            int left = intervals.get(i).start;
            int right = intervals.get(i).end;
            while (i < len-1 && intervals.get(i+1).start <= right) {
                right = Math.max(right,intervals.get(i+1).end);
                i++;
            }
            res.add(new Interval(left,right));
            i++;
        }
        return res;
    }
}
