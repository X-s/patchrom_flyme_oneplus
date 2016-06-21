.class Lcom/android/systemui_ex/qs/QSPanel$3;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/qs/QSPanel;->addTile(Lcom/android/systemui_ex/qs/QSTile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/qs/QSPanel;

.field final synthetic val$r:Lcom/android/systemui_ex/qs/QSPanel$TileRecord;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/qs/QSPanel;Lcom/android/systemui_ex/qs/QSPanel$TileRecord;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/systemui_ex/qs/QSPanel$3;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui_ex/qs/QSPanel$3;->val$r:Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel$3;->val$r:Lcom/android/systemui_ex/qs/QSPanel$TileRecord;

    iget-object v0, v0, Lcom/android/systemui_ex/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui_ex/qs/QSTile;

    invoke-virtual {v0}, Lcom/android/systemui_ex/qs/QSTile;->click()V

    .line 293
    return-void
.end method
