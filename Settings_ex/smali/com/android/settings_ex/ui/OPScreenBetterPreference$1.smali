.class Lcom/android/settings_ex/ui/OPScreenBetterPreference$1;
.super Landroid/support/v4/view/PagerAdapter;
.source "OPScreenBetterPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ui/OPScreenBetterPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

.field final synthetic val$views:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ui/OPScreenBetterPreference;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$1;->this$0:Lcom/android/settings_ex/ui/OPScreenBetterPreference;

    iput-object p2, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$1;->val$views:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$1;->val$views:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 93
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$1;->val$views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 97
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$1;->val$views:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPScreenBetterPreference$1;->val$views:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 82
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
