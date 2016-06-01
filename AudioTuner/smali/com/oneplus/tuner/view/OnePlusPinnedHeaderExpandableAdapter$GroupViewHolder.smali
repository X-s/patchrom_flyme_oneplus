.class Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;
.super Ljava/lang/Object;
.source "OnePlusPinnedHeaderExpandableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupViewHolder"
.end annotation


# instance fields
.field private brandName:Landroid/widget/TextView;

.field private icon:Landroid/widget/ImageView;

.field private parent:Landroid/view/View;

.field final synthetic this$0:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;->this$0:Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;->brandName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;->brandName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableAdapter$GroupViewHolder;->icon:Landroid/widget/ImageView;

    return-object p1
.end method
