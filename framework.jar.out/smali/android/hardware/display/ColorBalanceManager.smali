.class public final Landroid/hardware/display/ColorBalanceManager;
.super Ljava/lang/Object;
.source "ColorBalanceManager.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final MSG_ACTIVE_MODE:I = 0x5

.field public static final MSG_CHECK_LIGHT:I = 0x10

.field public static final MSG_CHECK_SRGBSEN:I = 0xf

.field public static final MSG_DEFAULT_MODE:I = 0x6

.field public static final MSG_NIGHT2READING:I = 0xd

.field public static final MSG_NIGHT_ENVIRONMENT_CHANGED:I = 0x8

.field public static final MSG_NIGHT_SWITCH:I = 0xa

.field public static final MSG_READING2NIGHT:I = 0xe

.field public static final MSG_READING_ENVIRONMENT_CHANGED:I = 0x9

.field public static final MSG_READING_SWITCH:I = 0xb

.field public static final MSG_REVERT_STATUS:I = 0xc

.field public static final MSG_SAVE_MODE:I = 0x4

.field public static final MSG_SCREEN_AFTER_ON:I = 0x7

.field public static final MSG_SCREEN_OFF:I = 0x2

.field public static final MSG_SCREEN_ON:I = 0x1

.field public static final MSG_SET_COLORBALANCE:I = 0x3

.field public static final TAG:Ljava/lang/String; = "ColorBalanceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mLock:Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Landroid/hardware/display/ColorBalanceManager;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {}, Landroid/hardware/display/ColorBalanceManagerGlobal;->getInstance()Landroid/hardware/display/ColorBalanceManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    .line 38
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    if-nez v0, :cond_0

    .line 39
    const-string/jumbo v0, "ColorBalanceManager"

    const-string/jumbo v1, "ColorBalanceManager service error!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public sendMsg(I)V
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 45
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorBalanceManagerGlobal;->sendMsg(I)V

    .line 44
    :goto_0
    return-void

    .line 48
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
    .line 54
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorBalanceManagerGlobal;->setActiveMode(I)V

    .line 53
    :goto_0
    return-void

    .line 57
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
    .line 72
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorBalanceManagerGlobal;->setColorBalance(I)V

    .line 71
    :goto_0
    return-void

    .line 75
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
    .line 63
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Landroid/hardware/display/ColorBalanceManager;->mGlobal:Landroid/hardware/display/ColorBalanceManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorBalanceManagerGlobal;->setDefaultMode(I)V

    .line 62
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string/jumbo v0, "ColorBalanceManager"

    const-string/jumbo v1, "mGlobal null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
