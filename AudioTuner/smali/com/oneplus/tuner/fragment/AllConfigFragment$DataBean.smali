.class Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;
.super Ljava/lang/Object;
.source "AllConfigFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/fragment/AllConfigFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataBean"
.end annotation


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/fragment/AllConfigFragment;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;->this$0:Lcom/oneplus/tuner/fragment/AllConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;->icon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/AllConfigFragment$DataBean;->name:Ljava/lang/String;

    return-object p1
.end method
