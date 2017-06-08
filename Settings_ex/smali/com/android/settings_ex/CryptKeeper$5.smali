.class Lcom/android/settings_ex/CryptKeeper$5;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/CryptKeeper;->showFactoryReset(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeper;

.field final synthetic val$corrupt:Z

.field final synthetic val$mdtp_activated:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeper;ZZ)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$5;->this$0:Lcom/android/settings_ex/CryptKeeper;

    iput-boolean p2, p0, Lcom/android/settings_ex/CryptKeeper$5;->val$mdtp_activated:Z

    iput-boolean p3, p0, Lcom/android/settings_ex/CryptKeeper$5;->val$corrupt:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 676
    iget-boolean v7, p0, Lcom/android/settings_ex/CryptKeeper$5;->val$mdtp_activated:Z

    if-eqz v7, :cond_0

    .line 677
    const-string v7, "CryptKeeper"

    const-string v8, "  Calling encryptStorage with wipe"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :try_start_0
    iget-object v7, p0, Lcom/android/settings_ex/CryptKeeper$5;->this$0:Lcom/android/settings_ex/CryptKeeper;

    # invokes: Lcom/android/settings_ex/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v7}, Lcom/android/settings_ex/CryptKeeper;->access$300(Lcom/android/settings_ex/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v6

    .line 680
    .local v6, "service":Landroid/os/storage/IMountService;
    const/4 v7, 0x1

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/os/storage/IMountService;->encryptWipeStorage(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    .end local v6    # "service":Landroid/os/storage/IMountService;
    :goto_0
    return-void

    .line 682
    :catch_0
    move-exception v3

    .line 683
    .local v3, "e":Landroid/os/RemoteException;
    const-string v7, "CryptKeeper"

    const-string v8, "Unable to call MountService properly"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 689
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v7, "/cache"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 690
    .local v1, "RECOVERY_DIR":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v7, "encryptfailed"

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 692
    .local v0, "ENCRYPT_FAILED_FILE":Ljava/io/File;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 694
    .local v2, "df":Ljava/text/SimpleDateFormat;
    :try_start_1
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 695
    .local v4, "encrypt_failed":Ljava/io/FileWriter;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 696
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 702
    .end local v4    # "encrypt_failed":Ljava/io/FileWriter;
    :goto_1
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 704
    const-string v7, "android.intent.extra.REASON"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CryptKeeper.showFactoryReset() corrupt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings_ex/CryptKeeper$5;->val$corrupt:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    iget-object v7, p0, Lcom/android/settings_ex/CryptKeeper$5;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-virtual {v7, v5}, Lcom/android/settings_ex/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 698
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 699
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
