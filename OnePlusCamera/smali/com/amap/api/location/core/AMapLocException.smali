.class public Lcom/amap/api/location/core/AMapLocException;
.super Ljava/lang/Exception;
.source "AMapLocException.java"


# static fields
.field public static final ERROR_CODE_CONNECTION:I = 0x1e

.field public static final ERROR_CODE_FAILURE_AUTH:I = 0x20

.field public static final ERROR_CODE_FAILURE_INFO:I = 0x21

.field public static final ERROR_CODE_FAILURE_LOCATION:I = 0x22

.field public static final ERROR_CODE_INVALID_PARAMETER:I = 0x18

.field public static final ERROR_CODE_IO:I = 0x15

.field public static final ERROR_CODE_NULL_PARAMETER:I = 0x19

.field public static final ERROR_CODE_PROTOCOL:I = 0x1d

.field public static final ERROR_CODE_SOCKET:I = 0x16

.field public static final ERROR_CODE_SOCKE_TIME_OUT:I = 0x17

.field public static final ERROR_CODE_UNKNOWN:I = 0x1f

.field public static final ERROR_CODE_UNKNOW_HOST:I = 0x1b

.field public static final ERROR_CODE_UNKNOW_SERVICE:I = 0x1c

.field public static final ERROR_CODE_URL:I = 0x1a

.field public static final ERROR_CONNECTION:Ljava/lang/String; = "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

.field public static final ERROR_FAILURE_AUTH:Ljava/lang/String; = "key\u9274\u6743\u5931\u8d25"

.field public static final ERROR_FAILURE_INFO:Ljava/lang/String; = "\u83b7\u53d6\u57fa\u7ad9/WiFi\u4fe1\u606f\u4e3a\u7a7a\u6216\u5931\u8d25"

.field public static final ERROR_FAILURE_LOCATION:Ljava/lang/String; = "\u5b9a\u4f4d\u5931\u8d25\u65e0\u6cd5\u83b7\u53d6\u57ce\u5e02\u4fe1\u606f"

.field public static final ERROR_INVALID_PARAMETER:Ljava/lang/String; = "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

.field public static final ERROR_IO:Ljava/lang/String; = "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

.field public static final ERROR_NULL_PARAMETER:Ljava/lang/String; = "\u7a7a\u6307\u9488\u5f02\u5e38 - NullPointException"

.field public static final ERROR_PROTOCOL:Ljava/lang/String; = "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

.field public static final ERROR_SOCKET:Ljava/lang/String; = "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

.field public static final ERROR_SOCKE_TIME_OUT:Ljava/lang/String; = "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

.field public static final ERROR_UNKNOWN:Ljava/lang/String; = "\u672a\u77e5\u7684\u9519\u8bef"

.field public static final ERROR_UNKNOW_HOST:Ljava/lang/String; = "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

.field public static final ERROR_UNKNOW_SERVICE:Ljava/lang/String; = "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

.field public static final ERROR_URL:Ljava/lang/String; = "url\u5f02\u5e38 - MalformedURLException"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v0, "\u6b63\u5e38"

    .line 36
    iput-object v0, p0, Lcom/amap/api/location/core/AMapLocException;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/amap/api/location/core/AMapLocException;->b:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v0, "\u6b63\u5e38"

    .line 36
    iput-object v0, p0, Lcom/amap/api/location/core/AMapLocException;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/amap/api/location/core/AMapLocException;->b:I

    .line 40
    iput-object p1, p0, Lcom/amap/api/location/core/AMapLocException;->a:Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/amap/api/location/core/AMapLocException;->a(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "\u7a7a\u6307\u9488\u5f02\u5e38 - NullPointException"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "url\u5f02\u5e38 - MalformedURLException"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "\u672a\u77e5\u7684\u9519\u8bef"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "key\u9274\u6743\u5931\u8d25"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "\u83b7\u53d6\u57fa\u7ad9/WiFi\u4fe1\u606f\u4e3a\u7a7a\u6216\u5931\u8d25"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "\u5b9a\u4f4d\u5931\u8d25\u65e0\u6cd5\u83b7\u53d6\u57ce\u5e02\u4fe1\u606f"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 85
    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x15

    .line 57
    iput v0, p0, Lcom/amap/api/location/core/AMapLocException;->b:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x16

    .line 59
    iput v0, p0, Lcom/amap/api/location/core/AMapLocException;->b:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x17

    .line 61
    iput v0, p0, Lcom/amap/api/location/core/AMapLocException;->b:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x18

    .line 63
    iput v0, p0, Lcom/amap/api/location/core/AMapLocException;->b:I

    goto :goto_0

    :cond_4
    const/16 v0, 0x19

    .line 65
    iput v0, p0, Lcom/amap/api/location/core/AMapLocException;->b:I

    goto :goto_0

    :cond_5
    const/16 v0, 0x1a

    .line 67
    iput v0, p0, Lcom/amap/api/location/core/AMapLocException;->b:I

    goto :goto_0

    :cond_6
    const/16 v0, 0x1b

    .line 69
    iput v0, p0, Lcom/amap/api/location/core/AMapLocException;->b:I

    goto :goto_0

    :cond_7
    const/16 v0, 0x1c

    .line 71
    iput v0, p0, Lcom/amap/api/location/core/AMapLocException;->b:I

    goto :goto_0

    :cond_8
    const/16 v0, 0x1d

    .line 73
    iput v0, p0, Lcom/amap/api/location/core/AMapLocException;->b:I

    goto :goto_0

    :cond_9
    const/16 v0, 0x1e

    .line 75
    iput v0, p0, Lcom/amap/api/location/core/AMapLocException;->b:I

    goto :goto_0

    :cond_a
    const/16 v0, 0x1f

    .line 77
    iput v0, p0, Lcom/amap/api/location/core/AMapLocException;->b:I

    goto :goto_0

    :cond_b
    const/16 v0, 0x20

    .line 79
    iput v0, p0, Lcom/amap/api/location/core/AMapLocException;->b:I

    goto :goto_0

    :cond_c
    const/16 v0, 0x21

    .line 81
    iput v0, p0, Lcom/amap/api/location/core/AMapLocException;->b:I

    goto :goto_0

    :cond_d
    const/16 v0, 0x22

    .line 83
    iput v0, p0, Lcom/amap/api/location/core/AMapLocException;->b:I

    goto :goto_0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/amap/api/location/core/AMapLocException;->b:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amap/api/location/core/AMapLocException;->a:Ljava/lang/String;

    return-object v0
.end method
