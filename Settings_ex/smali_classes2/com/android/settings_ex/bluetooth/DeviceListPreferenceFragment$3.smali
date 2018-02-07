.class Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$3;
.super Ljava/lang/Object;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$3;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$3;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->-get1(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
