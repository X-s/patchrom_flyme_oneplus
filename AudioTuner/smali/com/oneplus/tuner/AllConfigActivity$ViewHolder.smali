.class Lcom/oneplus/tuner/AllConfigActivity$ViewHolder;
.super Ljava/lang/Object;
.source "AllConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/AllConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private name:Landroid/widget/TextView;

.field private radioButton:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/oneplus/tuner/AllConfigActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/AllConfigActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/oneplus/tuner/AllConfigActivity$ViewHolder;->this$0:Lcom/oneplus/tuner/AllConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/tuner/AllConfigActivity$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/AllConfigActivity$ViewHolder;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oneplus/tuner/AllConfigActivity$ViewHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/tuner/AllConfigActivity$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/AllConfigActivity$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/oneplus/tuner/AllConfigActivity$ViewHolder;->name:Landroid/widget/TextView;

    return-object p1
.end method
