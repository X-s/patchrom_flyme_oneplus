.class Lcom/android/systemui_ex/qs/QSPanel$1;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/qs/QSPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/qs/QSPanel;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/systemui_ex/qs/QSPanel$1;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel$1;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui_ex/qs/QSPanel;->closeDetail()V

    .line 115
    return-void
.end method
