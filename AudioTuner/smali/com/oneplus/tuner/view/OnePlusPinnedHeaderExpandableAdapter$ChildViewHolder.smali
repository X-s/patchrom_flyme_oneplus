.class Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;
.super Ljava/lang/Object;
.source "OnePlusPinnedHeaderExpandableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChildViewHolder"
.end annotation


# instance fields
.field private parent:Landroid/view/View;

.field private rb:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;

.field private typeName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;->this$0:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;->typeName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;->typeName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;->rb:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$ChildViewHolder;->rb:Landroid/widget/ImageView;

    return-object p1
.end method
