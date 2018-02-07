.class Lcom/oneplus/settings/ui/OPListDialog$DialogListAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPListDialog$DialogListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPListDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPListDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ui/OPListDialog;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog$DialogListAdapter;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog$DialogListAdapter;->this$0:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPListDialog;->-get2(Lcom/oneplus/settings/ui/OPListDialog;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    return-object p2
.end method
