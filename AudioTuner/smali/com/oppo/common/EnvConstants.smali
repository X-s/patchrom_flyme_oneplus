.class public Lcom/oppo/common/EnvConstants;
.super Ljava/lang/Object;
.source "EnvConstants.java"


# static fields
.field public static CHANNEL:I

.field public static DEBUG:Z

.field public static ENV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/oppo/common/EnvConstants;->DEBUG:Z

    .line 6
    sput v0, Lcom/oppo/common/EnvConstants;->ENV:I

    .line 8
    const/4 v0, 0x1

    sput v0, Lcom/oppo/common/EnvConstants;->CHANNEL:I

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
