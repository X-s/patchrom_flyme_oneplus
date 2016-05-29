.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 377
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "rename device"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x1

    return v0
.end method
