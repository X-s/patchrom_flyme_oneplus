.class Lcom/android/systemui_ex/qs/QSPanel$6;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui_ex/qs/QSPanel$Record;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/qs/QSPanel;

.field final synthetic val$settingsIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/qs/QSPanel;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/systemui_ex/qs/QSPanel$6;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui_ex/qs/QSPanel$6;->val$settingsIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSPanel$6;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    # getter for: Lcom/android/systemui_ex/qs/QSPanel;->mHost:Lcom/android/systemui_ex/statusbar/phone/QSTileHost;
    invoke-static {v0}, Lcom/android/systemui_ex/qs/QSPanel;->access$900(Lcom/android/systemui_ex/qs/QSPanel;)Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSPanel$6;->val$settingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/QSTileHost;->startSettingsActivity(Landroid/content/Intent;)V

    .line 368
    return-void
.end method
