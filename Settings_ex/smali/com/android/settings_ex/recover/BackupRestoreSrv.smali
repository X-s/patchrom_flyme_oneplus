.class public Lcom/android/settings_ex/recover/BackupRestoreSrv;
.super Ljava/lang/Object;
.source "BackupRestoreSrv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupRestoreSrv"


# instance fields
.field private mSrvClient:Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->getInstence()Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv;->mSrvClient:Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;

    .line 25
    return-void
.end method


# virtual methods
.method public backup(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "pathSrc"    # Ljava/lang/String;
    .param p2, "pathDest"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Backup"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "cmd":Ljava/lang/StringBuilder;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv;->mSrvClient:Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->excute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public backupSpecialFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "pathSrc"    # Ljava/lang/String;
    .param p3, "pathDest"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "cmd":Ljava/lang/StringBuilder;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv;->mSrvClient:Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->excute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public cleardir(Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClearDir"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "cmd":Ljava/lang/StringBuilder;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv;->mSrvClient:Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->excute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "srcFile"    # Ljava/lang/String;
    .param p2, "desFile"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CopyFile"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "cmd":Ljava/lang/StringBuilder;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv;->mSrvClient:Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->excute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv;->mSrvClient:Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-virtual {v0}, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->disconnect()V

    .line 29
    return-void
.end method

.method public restore(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "pathSrc"    # Ljava/lang/String;
    .param p2, "pathDest"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Restore"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "cmd":Ljava/lang/StringBuilder;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lcom/android/settings_ex/recover/BackupRestoreSrv;->mSrvClient:Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/recover/BackupRestoreSrv$BackupRestoreSrvClient;->excute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method
