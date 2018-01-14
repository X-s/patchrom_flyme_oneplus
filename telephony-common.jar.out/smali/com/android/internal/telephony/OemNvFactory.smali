.class public Lcom/android/internal/telephony/OemNvFactory;
.super Ljava/lang/Object;
.source "OemNvFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NvFactory"


# instance fields
.field public cm:Lcom/android/internal/telephony/CommandsInterface;

.field public cmd:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/OemNvFactory;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 44
    return-void
.end method


# virtual methods
.method public cancelCracked()V
    .locals 3

    .prologue
    .line 109
    const-string/jumbo v0, "NvFactory"

    const-string/jumbo v1, "cancelCracked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setFactoryModeNvProcess(ILandroid/os/Message;)V

    .line 108
    return-void
.end method

.method public goCracked()V
    .locals 3

    .prologue
    .line 115
    const-string/jumbo v0, "NvFactory"

    const-string/jumbo v1, "goCracked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/16 v0, 0x16

    iput v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setFactoryModeNvProcess(ILandroid/os/Message;)V

    .line 114
    return-void
.end method

.method public hasCracked()V
    .locals 3

    .prologue
    .line 102
    const-string/jumbo v0, "NvFactory"

    const-string/jumbo v1, "hasCracked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setFactoryModeNvProcess(ILandroid/os/Message;)V

    .line 101
    return-void
.end method

.method public onDynamicNvAutoCheck()V
    .locals 3

    .prologue
    .line 55
    const-string/jumbo v0, "NvFactory"

    const-string/jumbo v1, "onDynamicNvAutoCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setFactoryModeNvProcess(ILandroid/os/Message;)V

    .line 54
    return-void
.end method

.method public onDynamicNvBackup()V
    .locals 3

    .prologue
    .line 65
    const-string/jumbo v0, "NvFactory"

    const-string/jumbo v1, "onDynamicNvBackup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setFactoryModeNvProcess(ILandroid/os/Message;)V

    .line 64
    return-void
.end method

.method public onDynamicNvCheck()V
    .locals 3

    .prologue
    .line 50
    const-string/jumbo v0, "NvFactory"

    const-string/jumbo v1, "onDynamicNvCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setFactoryModeNvProcess(ILandroid/os/Message;)V

    .line 49
    return-void
.end method

.method public onDynamicNvRestore()V
    .locals 3

    .prologue
    .line 60
    const-string/jumbo v0, "NvFactory"

    const-string/jumbo v1, "onDynamicNvRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setFactoryModeNvProcess(ILandroid/os/Message;)V

    .line 59
    return-void
.end method

.method public onLteNvChange()V
    .locals 3

    .prologue
    .line 94
    const-string/jumbo v0, "NvFactory"

    const-string/jumbo v1, "onLteNvChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setFactoryModeNvProcess(ILandroid/os/Message;)V

    .line 93
    return-void
.end method

.method public onStaticNvAutoCheck()V
    .locals 3

    .prologue
    .line 77
    const-string/jumbo v0, "NvFactory"

    const-string/jumbo v1, "onStaticNvAutoCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setFactoryModeNvProcess(ILandroid/os/Message;)V

    .line 76
    return-void
.end method

.method public onStaticNvBackup()V
    .locals 3

    .prologue
    .line 87
    const-string/jumbo v0, "NvFactory"

    const-string/jumbo v1, "onStaticNvBackup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setFactoryModeNvProcess(ILandroid/os/Message;)V

    .line 86
    return-void
.end method

.method public onStaticNvCheck()V
    .locals 3

    .prologue
    .line 72
    const-string/jumbo v0, "NvFactory"

    const-string/jumbo v1, "onStaticNvCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setFactoryModeNvProcess(ILandroid/os/Message;)V

    .line 71
    return-void
.end method

.method public onStaticNvRestore()V
    .locals 3

    .prologue
    .line 82
    const-string/jumbo v0, "NvFactory"

    const-string/jumbo v1, "onStaticNvRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/OemNvFactory;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/OemNvFactory;->cmd:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setFactoryModeNvProcess(ILandroid/os/Message;)V

    .line 81
    return-void
.end method
