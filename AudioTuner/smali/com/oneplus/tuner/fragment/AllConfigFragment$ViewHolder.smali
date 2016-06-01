.class Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;
.super Ljava/lang/Object;
.source "AllConfigFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/fragment/AllConfigFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/fragment/AllConfigFragment;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;->this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$ViewHolder;->name:Landroid/widget/TextView;

    return-object p1
.end method
