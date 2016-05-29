.class Lcom/android/settings_ex/DeviceInfoSettings$3;
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
    .line 827
    iput-object p1, p0, Lcom/android/settings_ex/DeviceInfoSettings$3;->this$0:Lcom/android/settings_ex/DeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings$3;->this$0:Lcom/android/settings_ex/DeviceInfoSettings;

    # getter for: Lcom/android/settings_ex/DeviceInfoSettings;->mUpdateDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/DeviceInfoSettings;->access$300(Lcom/android/settings_ex/DeviceInfoSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 834
    return-void
.end method
