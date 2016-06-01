.class Lcom/oneplus/tuner/AllConfigActivity$DataBean;
.super Ljava/lang/Object;
.source "AllConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/AllConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataBean"
.end annotation


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/tuner/AllConfigActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/AllConfigActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oneplus/tuner/AllConfigActivity$DataBean;->this$0:Lcom/oneplus/tuner/AllConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/AllConfigActivity$DataBean;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/AllConfigActivity$DataBean;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oneplus/tuner/AllConfigActivity$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/tuner/AllConfigActivity$DataBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/AllConfigActivity$DataBean;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oneplus/tuner/AllConfigActivity$DataBean;->name:Ljava/lang/String;

    return-object p1
.end method
