.class public Lcom/oppo/tribune/util/FormatStrings;
.super Ljava/lang/Object;
.source "FormatStrings.java"


# static fields
.field private static mSpacePattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const/4 p0, 0x0

    .line 34
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    return-object p0

    .line 28
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    sget-object v1, Lcom/oppo/tribune/util/FormatStrings;->mSpacePattern:Ljava/util/regex/Pattern;

    if-nez v1, :cond_1

    .line 29
    const-string v1, "\\s+"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/oppo/tribune/util/FormatStrings;->mSpacePattern:Ljava/util/regex/Pattern;

    .line 31
    :cond_1
    sget-object v1, Lcom/oppo/tribune/util/FormatStrings;->mSpacePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 32
    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 34
    goto :goto_0
.end method

.method public static formatTail(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    const/4 p0, 0x0

    .line 51
    .local v0, "builder":Ljava/lang/StringBuilder;
    .local v1, "matcher":Ljava/util/regex/Matcher;
    .local v2, "pattern":Ljava/util/regex/Pattern;
    :goto_0
    return-object p0

    .line 42
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    const-string v3, "\\s*"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v3, "OPPO"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v3, "\\s*"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 48
    .restart local v2    # "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 49
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 51
    goto :goto_0
.end method
