.class public Lcom/oneplus/api/constants/CommonConstants;
.super Ljava/lang/Object;
.source "CommonConstants.java"


# static fields
.field public static final REQUEST_PROTOCOL_HTTP:Ljava/lang/String; = "http"

.field public static final REQUEST_PROTOCOL_HTTPS:Ljava/lang/String; = "https"

.field public static final SDF:Ljava/text/SimpleDateFormat;

.field public static final TOKEN_NAME:Ljava/lang/String; = "token"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/api/constants/CommonConstants;->SDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
