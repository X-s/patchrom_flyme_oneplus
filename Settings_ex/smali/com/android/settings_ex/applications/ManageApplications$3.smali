.class Lcom/android/settings_ex/applications/ManageApplications$3;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/ManageApplications;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageApplications;)V
    .locals 0

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$3;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$3;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$3;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications;->access$800(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09061e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$3;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$1600(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1265
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$3;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mTabText3:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$3;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications;->access$800(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09061d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$3;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$1600(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method
