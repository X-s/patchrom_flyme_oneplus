.class Lcom/android/settings_ex/CryptKeeper$6;
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
    .param p1, "this$0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p2, "val$mdtp_activated"    # Z
    .param p3, "val$corrupt"    # Z

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    iput-boolean p2, p0, Lcom/android/settings_ex/CryptKeeper$6;->val$mdtp_activated:Z

    iput-boolean p3, p0, Lcom/android/settings_ex/CryptKeeper$6;->val$corrupt:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 686
    iget-boolean v8, p0, Lcom/android/settings_ex/CryptKeeper$6;->val$mdtp_activated:Z

    if-eqz v8, :cond_0

    .line 687
    const-string/jumbo v8, "CryptKeeper"

    const-string/jumbo v9, "  Calling encryptStorage with wipe"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-static {v8}, Lcom/android/settings_ex/CryptKeeper;->-wrap0(Lcom/android/settings_ex/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v7

    .line 690
    .local v7, "service":Landroid/os/storage/IMountService;
    const-string/jumbo v8, ""

    const/4 v9, 0x1

    invoke-interface {v7, v9, v8}, Landroid/os/storage/IMountService;->encryptWipeStorage(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .end local v7    # "service":Landroid/os/storage/IMountService;
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v3

    .line 693
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "CryptKeeper"

    const-string/jumbo v9, "Unable to call MountService properly"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void

    .line 699
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v8, "/cache"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 700
    .local v1, "RECOVERY_DIR":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v8, "encryptfailed"

    invoke-direct {v0, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 702
    .local v0, "ENCRYPT_FAILED_FILE":Ljava/io/File;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 704
    .local v2, "df":Ljava/text/SimpleDateFormat;
    :try_start_1
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 705
    .local v5, "encrypt_failed":Ljava/io/FileWriter;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 706
    const-string/jumbo v8, "\n"

    invoke-virtual {v5, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 712
    .end local v5    # "encrypt_failed":Ljava/io/FileWriter;
    :goto_1
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 714
    const-string/jumbo v8, "android.intent.extra.REASON"

    .line 715
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CryptKeeper.showFactoryReset() corrupt="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/settings_ex/CryptKeeper$6;->val$corrupt:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 714
    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper$6;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-virtual {v8, v6}, Lcom/android/settings_ex/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 708
    .end local v6    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v4

    .line 709
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
