using System;
using System.Collections.Generic;
using System.Reflection.Metadata;
using System.Text.RegularExpressions;

public static class Bob
{
  public static string Sup { get; } = "How are you?";

  public struct BobAnswer
  {
    public const string ChillOut = "Whoa, chill out!";
    public const string Shure = "Sure.";
    public const string CalmDown = "Calm down, I know what I'm doing!";
    public const string Fine = "Fine. Be that way!";
    public const string Whatever = "Whatever.";
  }

  public static string Response(string statement)
  {
    statement = statement.Trim();
    Regex regex = new Regex("[a-zA-Z]");

    var isContainWords = regex.IsMatch(statement);
    var isQuestion = statement.Contains('?') && 
                     statement.LastIndexOf('?') == statement.Length -1;
    var isCapitalise = statement.ToUpper() == statement && isContainWords;
    var isScreamQuestion = isQuestion && isCapitalise;
    var isWhiteSpaces = string.IsNullOrWhiteSpace(statement);

    if (isWhiteSpaces) return BobAnswer.Fine;
    else if (isScreamQuestion) return BobAnswer.CalmDown;
    else if (isQuestion) return BobAnswer.Shure;
    else if (isCapitalise) return BobAnswer.ChillOut;
    else return BobAnswer.Whatever;
  }
}
