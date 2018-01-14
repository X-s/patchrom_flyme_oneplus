.class Lcom/android/server/am/ActivityManagerService$31;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$heapdumpFile:Ljava/io/File;

.field final synthetic val$myProc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$heapdumpFile"    # Ljava/io/File;
    .param p3, "val$myProc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 21979
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$31;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$31;->val$heapdumpFile:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$31;->val$myProc:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 21982
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$31;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v6

    .line 21984
    sget-object v7, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    .line 21987
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 21985
    const/4 v9, 0x3

    .line 21982
    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 21988
    const/4 v3, 0x0

    .line 21990
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$31;->val$heapdumpFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 21991
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$31;->val$heapdumpFile:Ljava/io/File;

    .line 21992
    const/high16 v6, 0x2e000000

    .line 21991
    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 21996
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$31;->val$myProc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21997
    .local v4, "thread":Landroid/app/IApplicationThread;
    if-eqz v4, :cond_1

    .line 21999
    :try_start_1
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get3()Ljava/lang/String;

    move-result-object v5

    .line 22000
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Requesting dump heap from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 22001
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$31;->val$myProc:Lcom/android/server/am/ProcessRecord;

    .line 22000
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 22001
    const-string/jumbo v7, " to "

    .line 22000
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 22001
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$31;->val$heapdumpFile:Ljava/io/File;

    .line 22000
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 21999
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22002
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$31;->val$heapdumpFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v4, v6, v5, v3}, Landroid/app/IApplicationThread;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22009
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 22011
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 21981
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "thread":Landroid/app/IApplicationThread;
    :cond_2
    :goto_1
    return-void

    .line 22012
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "thread":Landroid/app/IApplicationThread;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_1

    .line 22006
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "thread":Landroid/app/IApplicationThread;
    :catch_1
    move-exception v1

    .line 22007
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22009
    if-eqz v3, :cond_2

    .line 22011
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 22012
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 22008
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 22009
    if-eqz v3, :cond_3

    .line 22011
    :try_start_5
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 22008
    :cond_3
    :goto_2
    throw v5

    .line 22012
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 22003
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "thread":Landroid/app/IApplicationThread;
    :catch_4
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
