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
            double lengthAsDouble = Convert.ToDouble(length);
            double heightAsDouble = Convert.ToDouble(height);

            if (LengthList.SelectedValue == "Millimeter" && HeightList.SelectedValue == "Millimeter")
            {
                RectangleReponse.Text = "The Area of Your Rectangle is: " + lengthAsDouble * heightAsDouble + "mm\xB2.";
            }
            else if (LengthList.SelectedValue == "Centimeter" && HeightList.SelectedValue == "Centimeter")
            {
                RectangleReponse.Text = "The Area of Your Rectangle is: " + lengthAsDouble * heightAsDouble + "cm\xB2.";
            }
            else if (LengthList.SelectedValue == "Meter" && HeightList.SelectedValue == "Meter")
            {
                RectangleReponse.Text = "The Area of Your Rectangle is: " + lengthAsDouble * heightAsDouble + "m\xB2.";
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
            double _baseAsDouble = Convert.ToDouble(_base);
            double _heightAsDouble = Convert.ToDouble(_height);

            if (TriangleDropDownBase.SelectedValue == "Millimeter" && TriangleDropDownHeight.SelectedValue == "Millimeter")
            {
                TriangleResponse.Text = "The Area of Your Rectangle is: " + (_baseAsDouble * _heightAsDouble) / 2 + "mm\xB2.";
            }
            else if (TriangleDropDownBase.SelectedValue == "Centimeter" && TriangleDropDownHeight.SelectedValue == "Centimeter")
            {
                RectangleReponse.Text = "The Area of Your Rectangle is: " + (_baseAsDouble * _heightAsDouble) / 2 + "cm\xB2.";
            }
            else if (TriangleDropDownBase.SelectedValue == "Meter" && TriangleDropDownHeight.SelectedValue == "Meter")
            {
                RectangleReponse.Text = "The Area of Your Rectangle is: " + (_baseAsDouble * _heightAsDouble) / 2 + "m\xB2.";
            }
            else
            {
                RectangleReponse.Text = "Please Choose the Same Unit of Measurement!";
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
            double width1AsDouble = Convert.ToDouble(trapWidth1);
            double width2AsDouble = Convert.ToDouble(trapwidth2);
            double trapHeightAsDouble = Convert.ToDouble(trapHeight);

            if (TrapezoidTopWidth.Text == "Millimeter" && TrapezoidBottomWidth.Text == "Millimeter" && TrapezoidHeight.Text == "Millimeter")
            {
                TrapezoidResponse.Text = "The Area of Your Trapezoid is: " + ((width1AsDouble + width2AsDouble) / 2) * trapHeightAsDouble + "mm\xB2";
            }
            else if (TrapezoidTopWidth.Text == "Centimeter" && TrapezoidBottomWidth.Text == "Centimeter" && TrapezoidHeight.Text == "Centimeter")
            {
                TrapezoidResponse.Text = "The Area of Your Trapezoid is: " + ((width1AsDouble + width2AsDouble) / 2) * trapHeightAsDouble + "cm\xB2";
            }
            else if (TrapezoidTopWidth.Text == "Meter" && TrapezoidBottomWidth.Text == "Meter" && TrapezoidHeight.Text == "Meter")
            {
                TrapezoidResponse.Text = "The Area of Your Trapezoid is: " + ((width1AsDouble + width2AsDouble) / 2) * trapHeightAsDouble + "m\xB2";
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

            if (RadiusDropDown.SelectedValue == "Millimeter")
            {
                CircleResponse.Text = "The Area of Your Circle is: " + Math.PI * (radiusAsDouble * radiusAsDouble) + "mm\xB2";
            }
            else if (RadiusDropDown.SelectedValue == "Centimeter")
            {
                CircleResponse.Text = "The Area of Your Circle is: " + Math.PI * (radiusAsDouble * radiusAsDouble) + "cm\xB2";
            }
            else if (RadiusDropDown.SelectedValue == "Meter")
            {
                CircleResponse.Text = "The Area of Your Circle is: " + Math.PI * (radiusAsDouble * radiusAsDouble) + "m\xB2";
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
