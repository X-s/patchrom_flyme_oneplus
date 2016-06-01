.class Lcom/oneplus/tuner/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/SearchActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/SearchActivity;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/oneplus/tuner/SearchActivity$2;->this$0:Lcom/oneplus/tuner/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oneplus/tuner/SearchActivity$2;->this$0:Lcom/oneplus/tuner/SearchActivity;

    iget-object v1, p0, Lcom/oneplus/tuner/SearchActivity$2;->this$0:Lcom/oneplus/tuner/SearchActivity;

    # getter for: Lcom/oneplus/tuner/SearchActivity;->mKeyword:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/tuner/SearchActivity;->access$000(Lcom/oneplus/tuner/SearchActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/oneplus/tuner/SearchActivity;->refreshListView(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/oneplus/tuner/SearchActivity;->access$100(Lcom/oneplus/tuner/SearchActivity;Ljava/lang/String;)V

    .line 180
    return-void
.end method
