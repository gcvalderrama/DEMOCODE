using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;

namespace SilverlightApplication1
{
    public partial class MainPage : UserControl
    {
        public MainPage()
        {
            InitializeComponent();

        }

        private void btnActivate_Click(object sender, RoutedEventArgs e)
        {
            var source = new CaptureSource();
            VideoCaptureDevice vcd = CaptureDeviceConfiguration.GetDefaultVideoCaptureDevice();
            source.VideoCaptureDevice = vcd;
            VideoBrush vb = new VideoBrush();
            var ib = new ImageBrush();
            vb.SetSource(source);
            rectangle1.Fill = vb;
            rectangle2.Fill = ib;
            if (CaptureDeviceConfiguration.RequestDeviceAccess())
            {
                source.Start();
            }
        }
    }
}
