.class Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;
.super Ljava/lang/Object;
.source "OPMultiAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field appIconIv:Landroid/widget/ImageView;

.field appNameTv:Landroid/widget/TextView;

.field bottomLine:Landroid/view/View;

.field groupDivider:Landroid/view/View;

.field parent:Landroid/widget/RelativeLayout;

.field summaryTv:Landroid/widget/TextView;

.field switchBt:Landroid/widget/Switch;

.field final synthetic this$0:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

.field titleTv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter$ItemViewHolder;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
