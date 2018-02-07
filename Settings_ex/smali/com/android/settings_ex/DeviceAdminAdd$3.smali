.class Lcom/android/settings_ex/DeviceAdminAdd$3;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DeviceAdminAdd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/DeviceAdminAdd;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/settings_ex/DeviceAdminAdd$3;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/settings_ex/DeviceAdminAdd$3;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 332
    const v1, 0x1605a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/DeviceAdminAdd$3;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    .line 331
    return-void
.end method
