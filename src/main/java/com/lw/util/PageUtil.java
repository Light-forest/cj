package com.lw.util;

public class PageUtil {
    int start =0;   //开始下标
    int count =30;   //每页数量
    int last  =0;   //结束下标
    int total =0;   //总记录数
    int pagecount =0;
    int pageindex =0;

    public int getStart() {
        return start;
    }
    public void setStart(int start) {
        this.start = start;
        pageindex= start / count +1;
    }
    public int getCount() {
        return count;
    }
    public void setCount(int count) {
        this.count = count;
    }
    public int getLast() {
        return last;
    }
    public void setLast(int last) {
        this.last = last;
    }
    public int getTotal() {
        return total;
    }
    public void setTotal(int total) {
        this.total = total;
    }

    public int getPagecount(){
        return pagecount;
    }
    public void setPagecount(int pagecount){
        this.pagecount=pagecount;
    }
    public void caculateLast(int a_total) {
        this.total=a_total;
        // 假设总数是50，是能够被5整除的，那么最后一页的开始就是45
        if (0 == total % count) {
            last = total - count;
            pagecount =total / count;
        }
            // 假设总数是51，不能够被5整除的，那么最后一页的开始就是50
        else {
            last = total - total % count;
            pagecount =total / count + 1;
        }

        pageindex= start / count +1;
    }

}
