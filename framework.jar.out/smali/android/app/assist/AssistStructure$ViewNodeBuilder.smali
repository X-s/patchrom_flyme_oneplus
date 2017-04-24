.class Landroid/app/assist/AssistStructure$ViewNodeBuilder;
.super Landroid/view/ViewStructure;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewNodeBuilder"
.end annotation


# instance fields
.field final mAssist:Landroid/app/assist/AssistStructure;

.field final mAsync:Z

.field final mNode:Landroid/app/assist/AssistStructure$ViewNode;


# direct methods
.method constructor <init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V
    .locals 0
    .param p1, "assist"    # Landroid/app/assist/AssistStructure;
    .param p2, "node"    # Landroid/app/assist/AssistStructure$ViewNode;
    .param p3, "async"    # Z

    .prologue
    .line 1058
    invoke-direct {p0}, Landroid/view/ViewStructure;-><init>()V

    .line 1059
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    .line 1060
    iput-object p2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    .line 1061
    iput-boolean p3, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAsync:Z

    .line 1062
    return-void
.end method

.method private final getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;
    .locals 2

    .prologue
    .line 1189
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 1193
    :goto_0
    return-object v0

    .line 1192
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v1, Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-direct {v1}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>()V

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 1193
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    goto :goto_0
.end method


# virtual methods
.method public addChildCount(I)I
    .locals 4
    .param p1, "num"    # I

    .prologue
    const/4 v2, 0x0

    .line 1273
    iget-object v3, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v3, v3, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-nez v3, :cond_0

    .line 1274
    invoke-virtual {p0, p1}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->setChildCount(I)V

    move v1, v2

    .line 1281
    :goto_0
    return v1

    .line 1277
    :cond_0
    iget-object v3, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v3, v3, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    array-length v1, v3

    .line 1278
    .local v1, "start":I
    add-int v3, v1, p1

    new-array v0, v3, [Landroid/app/assist/AssistStructure$ViewNode;

    .line 1279
    .local v0, "newArray":[Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v3, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v3, v3, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1280
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v0, v2, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    goto :goto_0
.end method

.method public asyncCommit()V
    .locals 4

    .prologue
    .line 1309
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    monitor-enter v1

    .line 1310
    :try_start_0
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAsync:Z

    if-nez v0, :cond_0

    .line 1311
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not created with ViewStructure.asyncNewChild"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1318
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1314
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    iget-object v0, v0, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1315
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already committed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1317
    :cond_1
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1318
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1319
    return-void
.end method

.method public asyncNewChild(I)Landroid/view/ViewStructure;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 1298
    iget-object v3, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    monitor-enter v3

    .line 1299
    :try_start_0
    new-instance v1, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v1}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    .line 1300
    .local v1, "node":Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v2, v2, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    aput-object v1, v2, p1

    .line 1301
    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v1, v4}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;-><init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    .line 1302
    .local v0, "builder":Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    iget-object v2, v2, Landroid/app/assist/AssistStructure;->mPendingAsyncChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    monitor-exit v3

    return-object v0

    .line 1304
    .end local v0    # "builder":Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    .end local v1    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1254
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1255
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    .line 1258
    :goto_0
    return-object v0

    .line 1257
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    .line 1258
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTempRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    iget-object v0, v0, Landroid/app/assist/AssistStructure;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextSelectionEnd()I
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTextSelectionStart()I
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public hasExtras()Z
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newChild(I)Landroid/view/ViewStructure;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1291
    new-instance v0, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    .line 1292
    .local v0, "node":Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    aput-object v0, v1, p1

    .line 1293
    new-instance v1, Landroid/app/assist/AssistStructure$ViewNodeBuilder;

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mAssist:Landroid/app/assist/AssistStructure;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;-><init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    return-object v1
.end method

.method public setAccessibilityFocused(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1150
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v2, v0, -0x1001

    if-eqz p1, :cond_0

    const/16 v0, 0x1000

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 1152
    return-void

    .line 1150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActivated(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1174
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v2, v0, -0x2001

    if-eqz p1, :cond_0

    const/16 v0, 0x2000

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 1176
    return-void

    .line 1174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1098
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 1099
    return-void
.end method

.method public setAssistBlocked(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1108
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v2, v0, -0x81

    if-eqz p1, :cond_0

    const/16 v0, 0x80

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 1110
    return-void

    .line 1108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCheckable(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1156
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v2, v0, -0x101

    if-eqz p1, :cond_0

    const/16 v0, 0x100

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 1158
    return-void

    .line 1156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1162
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v2, v0, -0x201

    if-eqz p1, :cond_0

    const/16 v0, 0x200

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 1164
    return-void

    .line 1162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChildCount(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 1268
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    new-array v1, p1, [Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    .line 1269
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 1180
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    .line 1181
    return-void
.end method

.method public setClickable(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1120
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v2, v0, -0x401

    if-eqz p1, :cond_0

    const/16 v0, 0x400

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 1122
    return-void

    .line 1120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 1185
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    .line 1186
    return-void
.end method

.method public setContextClickable(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1132
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v2, v0, -0x4001

    if-eqz p1, :cond_0

    const/16 v0, 0x4000

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 1134
    return-void

    .line 1132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDimens(IIIIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 1074
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    .line 1075
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    .line 1076
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p3, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    .line 1077
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p4, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    .line 1078
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    .line 1079
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    .line 1080
    return-void
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 1093
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    .line 1094
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1114
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v2, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 1116
    return-void

    .line 1114
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1138
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v2, v0, -0x11

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 1140
    return-void

    .line 1138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocused(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1144
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v2, v0, -0x21

    if-eqz p1, :cond_0

    const/16 v0, 0x20

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 1146
    return-void

    .line 1144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 1229
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    .line 1230
    return-void

    .line 1229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "typeName"    # Ljava/lang/String;
    .param p4, "entryName"    # Ljava/lang/String;

    .prologue
    .line 1066
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 1067
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p2, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    .line 1068
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p3, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    .line 1069
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iput-object p4, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    .line 1070
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1126
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v2, v0, -0x801

    if-eqz p1, :cond_0

    const/16 v0, 0x800

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 1128
    return-void

    .line 1126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1168
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v2, v0, -0x41

    if-eqz p1, :cond_0

    const/16 v0, 0x40

    :goto_0
    or-int/2addr v0, v2

    iput v0, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 1170
    return-void

    .line 1168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1198
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    move-result-object v0

    .line 1199
    .local v0, "t":Landroid/app/assist/AssistStructure$ViewNodeText;
    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    .line 1200
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    .line 1201
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I

    .prologue
    .line 1205
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    move-result-object v0

    .line 1206
    .local v0, "t":Landroid/app/assist/AssistStructure$ViewNodeText;
    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    .line 1207
    iput p2, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    .line 1208
    iput p3, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    .line 1209
    return-void
.end method

.method public setTextLines([I[I)V
    .locals 1
    .param p1, "charOffsets"    # [I
    .param p2, "baselines"    # [I

    .prologue
    .line 1222
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    move-result-object v0

    .line 1223
    .local v0, "t":Landroid/app/assist/AssistStructure$ViewNodeText;
    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    .line 1224
    iput-object p2, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    .line 1225
    return-void
.end method

.method public setTextStyle(FIII)V
    .locals 1
    .param p1, "size"    # F
    .param p2, "fgColor"    # I
    .param p3, "bgColor"    # I
    .param p4, "style"    # I

    .prologue
    .line 1213
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->getNodeText()Landroid/app/assist/AssistStructure$ViewNodeText;

    move-result-object v0

    .line 1214
    .local v0, "t":Landroid/app/assist/AssistStructure$ViewNodeText;
    iput p2, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    .line 1215
    iput p3, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    .line 1216
    iput p1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    .line 1217
    iput p4, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    .line 1218
    return-void
.end method

.method public setTransformation(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 1084
    if-nez p1, :cond_0

    .line 1085
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    .line 1089
    :goto_0
    return-void

    .line 1087
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1103
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->mNode:Landroid/app/assist/AssistStructure$ViewNode;

    iget v1, v1, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, -0xd

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 1104
    return-void
.end method
