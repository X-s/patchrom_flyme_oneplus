.class public final Lcom/android/settings_ex/bluetooth/DevicePickerActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "DevicePickerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f040035

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->setContentView(I)V

    .line 34
    return-void
.end method
