.class Lcom/android/systemui_ex/DessertCase$1;
.super Ljava/lang/Object;
.source "DessertCase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/DessertCase;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/DessertCase;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/DessertCase;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui_ex/DessertCase$1;->this$0:Lcom/android/systemui_ex/DessertCase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui_ex/DessertCase$1;->this$0:Lcom/android/systemui_ex/DessertCase;

    iget-object v0, v0, Lcom/android/systemui_ex/DessertCase;->mView:Lcom/android/systemui_ex/DessertCaseView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/DessertCaseView;->start()V

    .line 55
    return-void
.end method
