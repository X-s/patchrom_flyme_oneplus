.class Lcom/android/settings_ex/widget/DotsPageIndicator$1;
.super Ljava/lang/Object;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/widget/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/widget/DotsPageIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/widget/DotsPageIndicator;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$1;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$1;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ex/widget/DotsPageIndicator;->-set0(Lcom/android/settings_ex/widget/DotsPageIndicator;Z)Z

    .line 166
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$1;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/widget/DotsPageIndicator;->-set0(Lcom/android/settings_ex/widget/DotsPageIndicator;Z)Z

    .line 170
    return-void
.end method
