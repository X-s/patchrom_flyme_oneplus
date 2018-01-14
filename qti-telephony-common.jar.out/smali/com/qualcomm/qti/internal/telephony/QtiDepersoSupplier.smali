.class public Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;
.super Ljava/lang/Object;
.source "QtiDepersoSupplier.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "QtiDepersoSupplier"

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;

    if-nez v0, :cond_0

    .line 32
    const-string/jumbo v0, "QtiDepersoSupplier"

    const-string/jumbo v1, "QtiDepersoSupplier.getInstance called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;

    return-object v0
.end method

.method public static make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;

    .line 27
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;

    return-object v0

    .line 25
    :cond_0
    const-string/jumbo v0, "QtiDepersoSupplier"

    const-string/jumbo v1, "QtiDepersoSupplier.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/internal/IDepersoResCallback;I)V
    .locals 2
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "callback"    # Lorg/codeaurora/internal/IDepersoResCallback;
    .param p4, "phoneId"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const-string/jumbo v0, "QtiDepersoSupplier"

    const-string/jumbo v1, "Oem hook service is not ready yet "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void

    .line 49
    :cond_0
    const-string/jumbo v0, "QtiDepersoSupplier"

    const-string/jumbo v1, "supplyIccDepersonalization"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/internal/IDepersoResCallback;I)V

    .line 44
    return-void
.end method
