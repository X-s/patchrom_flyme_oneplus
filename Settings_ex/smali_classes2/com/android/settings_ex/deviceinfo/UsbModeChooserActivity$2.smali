.class Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$2;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->finish()V

    .line 93
    return-void
.end method
