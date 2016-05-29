.class public Lcom/oneplus/settings/RebootWipeUserdata;
.super Ljava/lang/Object;
.source "RebootWipeUserdata.java"


# static fields
.field private static COMMAND_FILE:Ljava/io/File;

.field private static LOG_FILE:Ljava/io/File;

.field private static RECOVERY_DIR:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/RebootWipeUserdata;->RECOVERY_DIR:Ljava/io/File;

    .line 21
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oneplus/settings/RebootWipeUserdata;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/RebootWipeUserdata;->COMMAND_FILE:Ljava/io/File;

    .line 22
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oneplus/settings/RebootWipeUserdata;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/RebootWipeUserdata;->LOG_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v6, Lcom/oneplus/settings/RebootWipeUserdata;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 77
    sget-object v6, Lcom/oneplus/settings/RebootWipeUserdata;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 78
    sget-object v6, Lcom/oneplus/settings/RebootWipeUserdata;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 80
    new-instance v2, Ljava/io/FileWriter;

    sget-object v6, Lcom/oneplus/settings/RebootWipeUserdata;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 82
    .local v2, "command":Ljava/io/FileWriter;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 83
    .local v0, "arg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 84
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 85
    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 93
    const-string v6, "power"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 94
    .local v5, "pm":Landroid/os/PowerManager;
    const-string v6, "recovery"

    invoke-virtual {v5, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 96
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Reboot failed (no permissions?)"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 89
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    throw v6
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wipeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 46
    .local v0, "condition":Landroid/os/ConditionVariable;
    const/4 v3, 0x0

    .line 47
    .local v3, "shutdownArg":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 48
    const-string v3, "--shutdown_after"

    .line 51
    :cond_0
    const/4 v2, 0x0

    .line 52
    .local v2, "reasonArg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lcom/oneplus/settings/RebootWipeUserdata;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--locale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "localeArg":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-static {p0, v4}, Lcom/oneplus/settings/RebootWipeUserdata;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private static sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3f

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 66
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 67
    return-object p0
.end method
