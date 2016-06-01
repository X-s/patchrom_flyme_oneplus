.class public Lcom/oppo/tribune/parse/StandardDate;
.super Ljava/lang/Object;
.source "StandardDate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/parse/StandardDate$1;,
        Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;
    }
.end annotation


# static fields
.field private static final TIME_SERVER_URL:Ljava/lang/String; = "http://newds.oppo.com/autotime/dateandtime.xml"


# instance fields
.field private final mDate:Ljava/lang/String;

.field private final mTime:Ljava/lang/String;

.field private final mTimeZone:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "timezone"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/oppo/tribune/parse/StandardDate;->mDate:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/oppo/tribune/parse/StandardDate;->mTime:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/oppo/tribune/parse/StandardDate;->mTimeZone:I

    .line 31
    return-void
.end method

.method public static parse(Landroid/content/Context;)Lcom/oppo/tribune/parse/StandardDate;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 46
    new-instance v0, Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;

    invoke-direct {v0, v1}, Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;-><init>(Lcom/oppo/tribune/parse/StandardDate$1;)V

    .line 47
    .local v0, "dh":Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;
    const-string v2, "http://newds.oppo.com/autotime/dateandtime.xml"

    invoke-static {p0, v2, v0}, Lcom/oppo/tribune/util/Utils;->saxParse(Landroid/content/Context;Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    # invokes: Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;->getResult()Lcom/oppo/tribune/parse/StandardDate;
    invoke-static {v0}, Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;->access$100(Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;)Lcom/oppo/tribune/parse/StandardDate;

    move-result-object v1

    .line 50
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oppo/tribune/parse/StandardDate;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oppo/tribune/parse/StandardDate;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/oppo/tribune/parse/StandardDate;->mTimeZone:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
