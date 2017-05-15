.class Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;I)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    iput p2, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    # getter for: Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings_ex/deviceinfo/UsbBackend;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->access$000(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings_ex/deviceinfo/UsbBackend;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;->val$mode:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbBackend;->setMode(I)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    # getter for: Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->access$100(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->finish()V

    .line 121
    return-void
.end method
