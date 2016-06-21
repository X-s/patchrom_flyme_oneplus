.class Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$1;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->handleClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->handleClickInner()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;->access$100(Lcom/android/systemui_ex/controlpanel/qs/tiles/WifiTile;)V

    .line 105
    return-void
.end method
