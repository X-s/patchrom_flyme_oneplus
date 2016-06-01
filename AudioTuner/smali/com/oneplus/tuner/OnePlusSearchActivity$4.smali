.class Lcom/oneplus/tuner/OnePlusSearchActivity$4;
.super Ljava/lang/Object;
.source "OnePlusSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OnePlusSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OnePlusSearchActivity;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$4;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$4;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    invoke-virtual {v0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->onBackPressed()V

    .line 329
    return-void
.end method
