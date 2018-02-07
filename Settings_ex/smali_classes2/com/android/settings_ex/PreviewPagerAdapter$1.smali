.class Lcom/android/settings_ex/PreviewPagerAdapter$1;
.super Ljava/lang/Object;
.source "PreviewPagerAdapter.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/PreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/PreviewPagerAdapter;

.field final synthetic val$fi:I

.field final synthetic val$fj:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/PreviewPagerAdapter;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/PreviewPagerAdapter;
    .param p2, "val$fi"    # I
    .param p3, "val$fj"    # I

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings_ex/PreviewPagerAdapter$1;->this$0:Lcom/android/settings_ex/PreviewPagerAdapter;

    iput p2, p0, Lcom/android/settings_ex/PreviewPagerAdapter$1;->val$fi:I

    iput p3, p0, Lcom/android/settings_ex/PreviewPagerAdapter$1;->val$fj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 3
    .param p1, "stub"    # Landroid/view/ViewStub;
    .param p2, "inflated"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/ViewStub;->getVisibility()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/PreviewPagerAdapter$1;->this$0:Lcom/android/settings_ex/PreviewPagerAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/PreviewPagerAdapter;->-get1(Lcom/android/settings_ex/PreviewPagerAdapter;)[[Z

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/PreviewPagerAdapter$1;->val$fi:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/settings_ex/PreviewPagerAdapter$1;->val$fj:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 71
    return-void
.end method
