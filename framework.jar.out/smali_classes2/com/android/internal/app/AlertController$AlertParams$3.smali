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
    .line 1104
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iput p5, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->val$layout:I

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1108
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$AlertParams$3;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1109
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->mLabelIndex:I

    .line 1110
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1117
    .local v8, "time":J
    const v7, 0x1020014

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckedTextView;

    .line 1119
    .local v6, "text":Landroid/widget/CheckedTextView;
    const/4 v5, 0x0

    .line 1120
    .local v5, "songname":Ljava/lang/String;
    const-string v4, ""

    .line 1122
    .local v4, "showname":Ljava/lang/String;
    :try_start_0
    iget v7, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->mLabelIndex:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1127
    :goto_0
    move-object v4, v5

    .line 1128
    if-eqz v5, :cond_0

    .line 1129
    const/4 v1, 0x0

    .line 1130
    .local v1, "flag":Z
    sget-object v7, Lcom/android/internal/app/AlertController;->OriginName:[Ljava/lang/String;

    array-length v3, v7

    .line 1131
    .local v3, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1132
    sget-object v7, Lcom/android/internal/app/AlertController;->OriginName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1133
    iget-object v7, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/internal/app/AlertController;->ShowName:[I

    aget v10, v10, v2

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1139
    .end local v1    # "flag":Z
    .end local v2    # "i":I
    .end local v3    # "num":I
    :cond_0
    invoke-virtual {v6, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    return-void

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, ""

    goto :goto_0

    .line 1131
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "flag":Z
    .restart local v2    # "i":I
    .restart local v3    # "num":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->val$layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
