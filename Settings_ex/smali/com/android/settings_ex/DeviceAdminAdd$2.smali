.class Lcom/android/settings_ex/DeviceAdminAdd$2;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/settings_ex/DeviceAdminAdd$2;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd$2;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    invoke-virtual {v3}, Lcom/android/settings_ex/DeviceAdminAdd;->getEllipsizedLines()I

    move-result v1

    .line 266
    .local v1, "maxLines":I
    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd$2;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-gt v3, v1, :cond_2

    const/4 v0, 0x1

    .line 267
    .local v0, "hideMsgExpander":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd$2;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    if-eqz v0, :cond_1

    .line 269
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd$2;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd$2;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 272
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd$2;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 273
    return-void

    .end local v0    # "hideMsgExpander":Z
    :cond_2
    move v0, v2

    .line 266
    goto :goto_0
.end method
