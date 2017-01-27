using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void RectangleButton_Click(object sender, EventArgs e)
    {
        try
        {
            string length = RectangleLength.Text;
            string height = RectangleHeight.Text;
            decimal lengthAsDecimal = Convert.ToDecimal(length);
            decimal heightAsDecimal = Convert.ToDecimal(height);
            decimal recResult = lengthAsDecimal * heightAsDecimal;

            if (LengthList.SelectedValue == "Millimeter" && HeightList.SelectedValue == "Millimeter")
            {
                RectangleReponse.Text = "The Area of Your Rectangle is: " + recResult.ToString("#.000") + "mm\xB2.";
            }
            else if (LengthList.SelectedValue == "Centimeter" && HeightList.SelectedValue == "Centimeter")
            {
                RectangleReponse.Text = "The Area of Your Rectangle is: " + recResult.ToString("#.000") + "cm\xB2.";
            }
            else if (LengthList.SelectedValue == "Meter" && HeightList.SelectedValue == "Meter")
            {
                RectangleReponse.Text = "The Area of Your Rectangle is: " + recResult.ToString("#.000") + "m\xB2.";
            }
            else
            {
                RectangleReponse.Text = "Please Choose the Same Unit of Measurement!";
            }
        }
        catch (FormatException)
        {
            RectangleReponse.Text = "Error! Please Enter a Valid Value! E.g. 5, 26.85";
        }
    }

    protected void TriangleButton_Click(object sender, EventArgs e)
    {
        try
        {
            string _base = TriangleBase.Text;
            string _height = TriangleHeight.Text;
            decimal _baseAsDecimal = Convert.ToDecimal(_base);
            decimal _heightAsDecimal = Convert.ToDecimal(_height);
            decimal triResult = _baseAsDecimal * _heightAsDecimal /2;

            if (TriangleDropDownBase.SelectedValue == "Millimeter" && TriangleDropDownHeight.SelectedValue == "Millimeter")
            {
                TriangleResponse.Text = "The Area of Your Rectangle is: " + triResult.ToString("#.000") + "mm\xB2.";
            }
            else if (TriangleDropDownBase.SelectedValue == "Centimeter" && TriangleDropDownHeight.SelectedValue == "Centimeter")
            {
                TriangleResponse.Text = "The Area of Your Rectangle is: " + triResult.ToString("#.000") + "cm\xB2.";
            }
            else if (TriangleDropDownBase.SelectedValue == "Meter" && TriangleDropDownHeight.SelectedValue == "Meter")
            {
                TriangleResponse.Text = "The Area of Your Rectangle is: " + triResult.ToString("#.000") + "m\xB2.";
            }
            else
            {
                TriangleResponse.Text = "Please Choose the Same Unit of Measurement!";
            }
        }
        catch (FormatException)
        {
            TriangleResponse.Text = "Error! Please Enter a Valid Value! E.g. 5, 26.85";
        }
    }

    protected void TrapezoidButton_Click(object sender, EventArgs e)
    {
        try
        {
            string trapWidth1 = TrapTopLength.Text;
            string trapwidth2 = TrapBottomLength.Text;
            string trapHeight = TrapHeight.Text;
            decimal width1AsDecimal = Convert.ToDecimal(trapWidth1);
            decimal width2AsDecimal = Convert.ToDecimal(trapwidth2);
            decimal trapHeightAsDecimal = Convert.ToDecimal(trapHeight);
            decimal trapResult = ((width1AsDecimal + width2AsDecimal) / 2) * trapHeightAsDecimal;

            if (TrapezoidTopWidth.Text == "Millimeter" && TrapezoidBottomWidth.Text == "Millimeter" && TrapezoidHeight.Text == "Millimeter")
            {
                TrapezoidResponse.Text = "The Area of Your Trapezoid is: " + trapResult.ToString("#.000") + "mm\xB2";
            }
            else if (TrapezoidTopWidth.Text == "Centimeter" && TrapezoidBottomWidth.Text == "Centimeter" && TrapezoidHeight.Text == "Centimeter")
            {
                TrapezoidResponse.Text = "The Area of Your Trapezoid is: " + trapResult.ToString("#.000") + "cm\xB2";
            }
            else if (TrapezoidTopWidth.Text == "Meter" && TrapezoidBottomWidth.Text == "Meter" && TrapezoidHeight.Text == "Meter")
            {
                TrapezoidResponse.Text = "The Area of Your Trapezoid is: " + trapResult.ToString("#.000") + "m\xB2";
            }
            else
            {
                TrapezoidResponse.Text = "Please Choose the Same Unit of Measurement!";
            }

        }
        catch (FormatException)
        {
            TrapezoidResponse.Text = "Error! Please Enter a Valid Value! E.g. 5, 26.85!";
        }
    }

    protected void CircleButton_Click(object sender, EventArgs e)
    {
        try
        {
            string radius = CircleRadius.Text;
            double radiusAsDouble = Convert.ToDouble(radius);
            double circResult = Math.PI * (radiusAsDouble * radiusAsDouble);

            if (RadiusDropDown.SelectedValue == "Millimeter")
            {
                CircleResponse.Text = "The Area of Your Circle is: " + circResult.ToString("#.00000") + "mm\xB2";
            }
            else if (RadiusDropDown.SelectedValue == "Centimeter")
            {
                CircleResponse.Text = "The Area of Your Circle is: " + circResult.ToString("#.00000") + "cm\xB2";
            }
            else if (RadiusDropDown.SelectedValue == "Meter")
            {
                CircleResponse.Text = "The Area of Your Circle is: " + circResult.ToString("#.00000") + "m\xB2";
            }
            else
            {
                CircleResponse.Text = "Please Choose the Same Unit of Measurement!";
            }
        }
        catch (FormatException)
        {
            CircleResponse.Text = "Error! Please Enter a Valid Value!E.g. 5, 26.85!";
        }
    }
}
