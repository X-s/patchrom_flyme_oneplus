.class Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;
.super Landroid/os/storage/StorageEventListener;
.source "PublicVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 3
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    # getter for: Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->access$000(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    # getter for: Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->access$200(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/StorageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    # getter for: Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->access$100(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    # setter for: Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->access$002(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->update()V

    .line 242
    :cond_0
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 2
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    # getter for: Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->access$000(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    # setter for: Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;
    invoke-static {v0, p1}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->access$002(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->update()V

    .line 234
    :cond_0
    return-void
.end method
