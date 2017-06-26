.class Lcom/oneplus/settings/OPDeviceInfoSettings$2;
.super Ljava/lang/Object;
.source "OPDeviceInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPDeviceInfoSettings;->CreateDeviceDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPDeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPDeviceInfoSettings;)V
    .locals 0

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/oneplus/settings/OPDeviceInfoSettings$2;->this$0:Lcom/oneplus/settings/OPDeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1018
    iget-object v1, p0, Lcom/oneplus/settings/OPDeviceInfoSettings$2;->this$0:Lcom/oneplus/settings/OPDeviceInfoSettings;

    # getter for: Lcom/oneplus/settings/OPDeviceInfoSettings;->mDeviceNameEdit:Lcom/oneplus/widget/OPEditText;
    invoke-static {v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->access$100(Lcom/oneplus/settings/OPDeviceInfoSettings;)Lcom/oneplus/widget/OPEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1019
    iget-object v1, p0, Lcom/oneplus/settings/OPDeviceInfoSettings$2;->this$0:Lcom/oneplus/settings/OPDeviceInfoSettings;

    # getter for: Lcom/oneplus/settings/OPDeviceInfoSettings;->mDeviceNameEdit:Lcom/oneplus/widget/OPEditText;
    invoke-static {v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->access$100(Lcom/oneplus/settings/OPDeviceInfoSettings;)Lcom/oneplus/widget/OPEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1031
    .local v0, "devicename":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/OPDeviceInfoSettings$2;->this$0:Lcom/oneplus/settings/OPDeviceInfoSettings;

    invoke-virtual {v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_oneplus_devicename"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1035
    iget-object v1, p0, Lcom/oneplus/settings/OPDeviceInfoSettings$2;->this$0:Lcom/oneplus/settings/OPDeviceInfoSettings;

    const-string v2, "mobile_device_name"

    iget-object v3, p0, Lcom/oneplus/settings/OPDeviceInfoSettings$2;->this$0:Lcom/oneplus/settings/OPDeviceInfoSettings;

    invoke-virtual {v3}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_oneplus_devicename"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/oneplus/settings/OPDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/OPDeviceInfoSettings;->access$200(Lcom/oneplus/settings/OPDeviceInfoSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    return-void

    .line 1025
    .end local v0    # "devicename":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/OPDeviceInfoSettings$2;->this$0:Lcom/oneplus/settings/OPDeviceInfoSettings;

    invoke-virtual {v1}, Lcom/oneplus/settings/OPDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_oneplus_devicename"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "devicename":Ljava/lang/String;
    goto :goto_0
.end method
