   class Program
    {
        //程序分析第三个月开始，兔子每月数量=前两个月兔子数量之和。
        static void Main(string[] args)
        {
            int month = 0;  //定义月份
            Console.Write("输入月份：");  //提示输入需要计算几个月
            month=Convert.ToInt32(Console.ReadLine());  //读取输入的月份
 
            int temp1 = 1;  //前2个月兔子数量.
            int temp2 = 1;  //前1个月兔子数量
 
            for(int i=1;i<=month;i++)
            {
                if (i == 1)
                {
                    //第一个月兔子数量
                    Console.WriteLine("第" + i + "月兔子数量为：1");
                }
                else if (i == 2)
                {
                    //第二个月兔子数量
                    Console.WriteLine("第" + i + "月兔子数量为：1");
                }
                else
                {
                    //第三个月开始是前两个月之和
                    int total = 0;
                    total = temp1 + temp2;
                    temp1 = temp2;
                    temp2 = total;
                    Console.Write("第" + i + "月兔子数量为：");
                    Console.WriteLine(total);                
                }
            }
            Console.ReadKey();
 
 
        }
    }
