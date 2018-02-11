.class Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$2;
.super Ljava/lang/Object;
.source "SettingsDrawerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->delayInitDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$2;->this$0:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$2;->this$0:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    iget-object v1, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$2;->this$0:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    invoke-static {v1}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->-get0(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;)Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;->getTile(I)Lcom/android/settings_exlib/drawer/Tile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->onTileClicked(Lcom/android/settings_exlib/drawer/Tile;)V

    .line 182
    return-void
.end method
