.class public final Landroid/hardware/display/ColorBalanceManager;
.super Ljava/lang/Object;
.source "ColorBalanceManager.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final MSG_SAVE_MODE:I = 0x6

.field public static final MSG_SCREEN_OFF:I = 0x2

.field public static final MSG_SCREEN_ON:I = 0x1

.field public static final MSG_SET_SEEKBAR:I = 0x4

.field public static final MSG_SET_SENSOR:I = 0x3

.field public static final MSG_SHADING:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ColorBalanceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mLock:Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Landroid/hardware/display/ColorBalanceManager;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {}, Landroid/hardware/display/ColorBalanceManagerGlobal;->getInstance()Landroid/hardware/display/ColorBalanceManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    .line 28
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    if-nez v0, :cond_0

    .line 29
    const-string/jumbo v0, "ColorBalanceManager"

    const-string/jumbo v1, "ColorBalanceManager service error!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public sendMsg(I)V
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 35
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorBalanceManagerGlobal;->sendMsg(I)V

    .line 34
    :goto_0
    return-void

    .line 38
    :cond_0
    const-string/jumbo v0, "ColorBalanceManager"

    const-string/jumbo v1, "mGlobal null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setActiveMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorBalanceManagerGlobal;->setActiveMode(I)V

    .line 43
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string/jumbo v0, "ColorBalanceManager"

    const-string/jumbo v1, "mGlobal null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setColorBalance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 62
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorBalanceManagerGlobal;->setColorBalance(I)V

    .line 61
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string/jumbo v0, "ColorBalanceManager"

    const-string/jumbo v1, "mGlobal null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 53
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorBalanceManagerGlobal;->setDefaultMode(I)V

    .line 52
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string/jumbo v0, "ColorBalanceManager"

    const-string/jumbo v1, "mGlobal null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
