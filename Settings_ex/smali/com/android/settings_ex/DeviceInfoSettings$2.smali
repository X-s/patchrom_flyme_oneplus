.class Lcom/android/settings_ex/DeviceInfoSettings$2;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DeviceInfoSettings;->CreateDeviceDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DeviceInfoSettings;)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/settings_ex/DeviceInfoSettings$2;->this$0:Lcom/android/settings_ex/DeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 821
    const-string v1, "ro.product.brand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings$2;->this$0:Lcom/android/settings_ex/DeviceInfoSettings;

    # getter for: Lcom/android/settings_ex/DeviceInfoSettings;->mDeviceNameEdit:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings_ex/DeviceInfoSettings;->access$100(Lcom/android/settings_ex/DeviceInfoSettings;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v1, "ro.product.brand"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "devicename":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/DeviceInfoSettings$2;->this$0:Lcom/android/settings_ex/DeviceInfoSettings;

    # getter for: Lcom/android/settings_ex/DeviceInfoSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings_ex/DeviceInfoSettings;->access$200(Lcom/android/settings_ex/DeviceInfoSettings;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 825
    return-void
.end method
