.class Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;
.super Ljava/lang/Object;
.source "PublicVolumeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .param p1, "this$0"    # Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 243
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageSettings$UnmountTask;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->-get1(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/StorageSettings$UnmountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageSettings$UnmountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 242
    return-void
.end method
