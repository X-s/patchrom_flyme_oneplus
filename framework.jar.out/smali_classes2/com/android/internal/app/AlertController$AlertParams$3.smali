.class Lcom/android/internal/app/AlertController$AlertParams$3;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/android/internal/app/AlertController$AlertParams;

.field final synthetic val$layout:I


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZI)V
    .locals 2
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/database/Cursor;
    .param p4, "x2"    # Z

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iput p5, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->val$layout:I

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1103
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$AlertParams$3;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1104
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->mLabelIndex:I

    .line 1105
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1109
    const v4, 0x1020014

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 1110
    .local v3, "text":Landroid/widget/CheckedTextView;
    const/4 v2, 0x0

    .line 1111
    .local v2, "songname":Ljava/lang/String;
    const-string v1, ""

    .line 1113
    .local v1, "showname":Ljava/lang/String;
    :try_start_0
    iget v4, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->mLabelIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1117
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget v5, v5, Lcom/android/internal/app/AlertController$AlertParams;->mRingtoneType:I

    invoke-static {v4, v5, v2}, Landroid/media/RingtoneManager;->getRingtoneAlias(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1118
    invoke-virtual {v3, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    return-void

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->val$layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
