.class public final Lcom/oneplus/gl/EglContextManager;
.super Ljava/lang/Object;
.source "EglContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gl/EglContextManager$Callback;,
        Lcom/oneplus/gl/EglContextManager$EglContextState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EglContextManager"

.field public static final THRESHOLD_GL_OPERATION_DURATION:J = 0x14L

.field private static final m_CurrentEglContextState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/oneplus/gl/EglContextManager$EglContextState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/gl/EglContextManager;->m_CurrentEglContextState:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static addCallback(Lcom/oneplus/gl/EglContextManager$Callback;)V
    .locals 3
    .param p0, "callback"    # Lcom/oneplus/gl/EglContextManager$Callback;

    .prologue
    .line 65
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/oneplus/gl/EglContextManager;->getEglContextState(Z)Lcom/oneplus/gl/EglContextManager$EglContextState;

    move-result-object v1

    .line 66
    .local v1, "contextState":Lcom/oneplus/gl/EglContextManager$EglContextState;
    iget-object v0, v1, Lcom/oneplus/gl/EglContextManager$EglContextState;->callbacks:Ljava/util/List;

    .line 67
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gl/EglContextManager$Callback;>;"
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gl/EglContextManager$Callback;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .restart local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gl/EglContextManager$Callback;>;"
    iput-object v0, v1, Lcom/oneplus/gl/EglContextManager$EglContextState;->callbacks:Ljava/util/List;

    .line 72
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-boolean v2, v1, Lcom/oneplus/gl/EglContextManager$EglContextState;->isEglContextReady:Z

    if-eqz v2, :cond_1

    .line 74
    invoke-interface {p0}, Lcom/oneplus/gl/EglContextManager$Callback;->onEglContextReady()V

    .line 75
    :cond_1
    return-void
.end method

.method private static getEglContextState(Z)Lcom/oneplus/gl/EglContextManager$EglContextState;
    .locals 2
    .param p0, "createNew"    # Z

    .prologue
    .line 81
    sget-object v1, Lcom/oneplus/gl/EglContextManager;->m_CurrentEglContextState:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/EglContextManager$EglContextState;

    .line 82
    .local v0, "state":Lcom/oneplus/gl/EglContextManager$EglContextState;
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 84
    new-instance v0, Lcom/oneplus/gl/EglContextManager$EglContextState;

    .end local v0    # "state":Lcom/oneplus/gl/EglContextManager$EglContextState;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/gl/EglContextManager$EglContextState;-><init>(Lcom/oneplus/gl/EglContextManager$EglContextState;)V

    .line 85
    .restart local v0    # "state":Lcom/oneplus/gl/EglContextManager$EglContextState;
    sget-object v1, Lcom/oneplus/gl/EglContextManager;->m_CurrentEglContextState:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-object v0
.end method

.method public static isEglContextReady()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-static {v1}, Lcom/oneplus/gl/EglContextManager;->getEglContextState(Z)Lcom/oneplus/gl/EglContextManager$EglContextState;

    move-result-object v0

    .line 98
    .local v0, "contextState":Lcom/oneplus/gl/EglContextManager$EglContextState;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/oneplus/gl/EglContextManager$EglContextState;->isEglContextReady:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isGLProfilingEnabled()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public static notifyEglContextDestroying()V
    .locals 14

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneplus/gl/EglContextManager;->getEglContextState(Z)Lcom/oneplus/gl/EglContextManager$EglContextState;

    move-result-object v7

    .line 119
    .local v7, "contextState":Lcom/oneplus/gl/EglContextManager$EglContextState;
    if-eqz v7, :cond_0

    iget-boolean v0, v7, Lcom/oneplus/gl/EglContextManager$EglContextState;->isEglContextReady:Z

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/oneplus/gl/EglContextManager$EglContextState;->isEglContextReady:Z

    .line 126
    const/4 v11, 0x0

    .line 127
    .local v11, "notifiedCount":I
    const/4 v13, 0x0

    .line 128
    .local v13, "recycledCount":I
    iget-object v8, v7, Lcom/oneplus/gl/EglContextManager$EglContextState;->activeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    .line 129
    .local v8, "holder":Lcom/oneplus/gl/EglObjectHolder;
    :goto_1
    if-nez v8, :cond_3

    .line 147
    iget-object v6, v7, Lcom/oneplus/gl/EglContextManager$EglContextState;->callbacks:Ljava/util/List;

    .line 148
    .local v6, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gl/EglContextManager$Callback;>;"
    if-eqz v6, :cond_2

    .line 150
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .local v9, "i":I
    :goto_2
    if-gez v9, :cond_5

    .line 154
    .end local v9    # "i":I
    :cond_2
    const-string v0, "EglContextManager"

    const-string v1, "notifyEglContextDestroying() - "

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " notified, "

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " recycled"

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    .end local v6    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gl/EglContextManager$Callback;>;"
    :cond_3
    iget-object v10, v8, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 132
    .local v10, "nextHolder":Lcom/oneplus/gl/EglObjectHolder;
    iget-object v0, v8, Lcom/oneplus/gl/EglObjectHolder;->eglObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/gl/EglObject;

    .line 133
    .local v12, "obj":Lcom/oneplus/gl/EglObject;
    if-eqz v12, :cond_4

    .line 135
    add-int/lit8 v11, v11, 0x1

    .line 136
    invoke-virtual {v12}, Lcom/oneplus/gl/EglObject;->onEglContextDestroying()V

    .line 143
    :goto_3
    move-object v8, v10

    goto :goto_1

    .line 140
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 141
    invoke-static {v7, v8}, Lcom/oneplus/gl/EglContextManager;->recycleEglObjectHolder(Lcom/oneplus/gl/EglContextManager$EglContextState;Lcom/oneplus/gl/EglObjectHolder;)V

    goto :goto_3

    .line 151
    .end local v10    # "nextHolder":Lcom/oneplus/gl/EglObjectHolder;
    .end local v12    # "obj":Lcom/oneplus/gl/EglObject;
    .restart local v6    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gl/EglContextManager$Callback;>;"
    .restart local v9    # "i":I
    :cond_5
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/EglContextManager$Callback;

    invoke-interface {v0}, Lcom/oneplus/gl/EglContextManager$Callback;->onEglContextDestroying()V

    .line 150
    add-int/lit8 v9, v9, -0x1

    goto :goto_2
.end method

.method public static notifyEglContextReady()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    .line 164
    invoke-static {v1}, Lcom/oneplus/gl/EglContextManager;->getEglContextState(Z)Lcom/oneplus/gl/EglContextManager$EglContextState;

    move-result-object v7

    .line 165
    .local v7, "contextState":Lcom/oneplus/gl/EglContextManager$EglContextState;
    iget-boolean v0, v7, Lcom/oneplus/gl/EglContextManager$EglContextState;->isEglContextReady:Z

    if-eqz v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 169
    :cond_0
    iput-boolean v1, v7, Lcom/oneplus/gl/EglContextManager$EglContextState;->isEglContextReady:Z

    .line 172
    iget-object v6, v7, Lcom/oneplus/gl/EglContextManager$EglContextState;->callbacks:Ljava/util/List;

    .line 173
    .local v6, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gl/EglContextManager$Callback;>;"
    if-eqz v6, :cond_1

    .line 175
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .local v9, "i":I
    :goto_1
    if-gez v9, :cond_2

    .line 180
    .end local v9    # "i":I
    :cond_1
    const/4 v11, 0x0

    .line 181
    .local v11, "notifiedCount":I
    const/4 v13, 0x0

    .line 182
    .local v13, "recycledCount":I
    iget-object v8, v7, Lcom/oneplus/gl/EglContextManager$EglContextState;->activeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    .line 183
    .local v8, "holder":Lcom/oneplus/gl/EglObjectHolder;
    :goto_2
    if-nez v8, :cond_3

    .line 199
    const-string v0, "EglContextManager"

    const-string v1, "notifyEglContextReady() - "

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " notified, "

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " recycled"

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    .end local v8    # "holder":Lcom/oneplus/gl/EglObjectHolder;
    .end local v11    # "notifiedCount":I
    .end local v13    # "recycledCount":I
    .restart local v9    # "i":I
    :cond_2
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/EglContextManager$Callback;

    invoke-interface {v0}, Lcom/oneplus/gl/EglContextManager$Callback;->onEglContextReady()V

    .line 175
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 185
    .end local v9    # "i":I
    .restart local v8    # "holder":Lcom/oneplus/gl/EglObjectHolder;
    .restart local v11    # "notifiedCount":I
    .restart local v13    # "recycledCount":I
    :cond_3
    iget-object v10, v8, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 186
    .local v10, "nextHolder":Lcom/oneplus/gl/EglObjectHolder;
    iget-object v0, v8, Lcom/oneplus/gl/EglObjectHolder;->eglObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/gl/EglObject;

    .line 187
    .local v12, "obj":Lcom/oneplus/gl/EglObject;
    if-eqz v12, :cond_4

    .line 189
    add-int/lit8 v11, v11, 0x1

    .line 190
    invoke-virtual {v12}, Lcom/oneplus/gl/EglObject;->onEglContextReady()V

    .line 197
    :goto_3
    move-object v8, v10

    goto :goto_2

    .line 194
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 195
    invoke-static {v7, v8}, Lcom/oneplus/gl/EglContextManager;->recycleEglObjectHolder(Lcom/oneplus/gl/EglContextManager$EglContextState;Lcom/oneplus/gl/EglObjectHolder;)V

    goto :goto_3
.end method

.method private static recycleEglObjectHolder(Lcom/oneplus/gl/EglContextManager$EglContextState;Lcom/oneplus/gl/EglObjectHolder;)V
    .locals 3
    .param p0, "contextState"    # Lcom/oneplus/gl/EglContextManager$EglContextState;
    .param p1, "holder"    # Lcom/oneplus/gl/EglObjectHolder;

    .prologue
    const/4 v2, 0x0

    .line 206
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 208
    iget-object v0, p1, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p1, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    iget-object v1, p1, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    iput-object v1, v0, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 210
    :cond_0
    iget-object v0, p1, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p1, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    iget-object v1, p1, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    iput-object v1, v0, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 212
    :cond_1
    iput-object v2, p1, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 213
    iget-object v0, p0, Lcom/oneplus/gl/EglContextManager$EglContextState;->freeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    iput-object v0, p1, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 214
    iget-object v0, p0, Lcom/oneplus/gl/EglContextManager$EglContextState;->freeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/oneplus/gl/EglContextManager$EglContextState;->freeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    iput-object p1, v0, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 216
    :cond_2
    iput-object p1, p0, Lcom/oneplus/gl/EglContextManager$EglContextState;->freeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    .line 217
    iput-object v2, p1, Lcom/oneplus/gl/EglObjectHolder;->eglObject:Ljava/lang/ref/WeakReference;

    .line 219
    :cond_3
    return-void
.end method

.method static registerEglObject(Lcom/oneplus/gl/EglObject;)V
    .locals 4
    .param p0, "obj"    # Lcom/oneplus/gl/EglObject;

    .prologue
    const/4 v3, 0x0

    .line 225
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/oneplus/gl/EglContextManager;->getEglContextState(Z)Lcom/oneplus/gl/EglContextManager$EglContextState;

    move-result-object v0

    .line 226
    .local v0, "contextState":Lcom/oneplus/gl/EglContextManager$EglContextState;
    iget-object v1, v0, Lcom/oneplus/gl/EglContextManager$EglContextState;->freeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    .line 227
    .local v1, "holder":Lcom/oneplus/gl/EglObjectHolder;
    if-eqz v1, :cond_2

    .line 229
    iput-object v3, v1, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 230
    iget-object v2, v1, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, v1, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    iput-object v3, v2, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 235
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/oneplus/gl/EglObjectHolder;->eglObject:Ljava/lang/ref/WeakReference;

    .line 236
    iget-object v2, v0, Lcom/oneplus/gl/EglContextManager$EglContextState;->activeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    iput-object v2, v1, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 237
    iget-object v2, v0, Lcom/oneplus/gl/EglContextManager$EglContextState;->activeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    if-eqz v2, :cond_1

    .line 238
    iget-object v2, v0, Lcom/oneplus/gl/EglContextManager$EglContextState;->activeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    iput-object v1, v2, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 239
    :cond_1
    iput-object v1, p0, Lcom/oneplus/gl/EglObject;->holder:Lcom/oneplus/gl/EglObjectHolder;

    .line 240
    return-void

    .line 234
    :cond_2
    new-instance v1, Lcom/oneplus/gl/EglObjectHolder;

    .end local v1    # "holder":Lcom/oneplus/gl/EglObjectHolder;
    invoke-direct {v1}, Lcom/oneplus/gl/EglObjectHolder;-><init>()V

    .restart local v1    # "holder":Lcom/oneplus/gl/EglObjectHolder;
    goto :goto_0
.end method

.method static throwEglError(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .line 247
    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 248
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static unregisterEglObject(Lcom/oneplus/gl/EglObject;)V
    .locals 2
    .param p0, "obj"    # Lcom/oneplus/gl/EglObject;

    .prologue
    .line 256
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/oneplus/gl/EglContextManager;->getEglContextState(Z)Lcom/oneplus/gl/EglContextManager$EglContextState;

    move-result-object v0

    .line 257
    .local v0, "contextState":Lcom/oneplus/gl/EglContextManager$EglContextState;
    iget-object v1, p0, Lcom/oneplus/gl/EglObject;->holder:Lcom/oneplus/gl/EglObjectHolder;

    invoke-static {v0, v1}, Lcom/oneplus/gl/EglContextManager;->recycleEglObjectHolder(Lcom/oneplus/gl/EglContextManager$EglContextState;Lcom/oneplus/gl/EglObjectHolder;)V

    .line 258
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/gl/EglObject;->holder:Lcom/oneplus/gl/EglObjectHolder;

    .line 259
    return-void
.end method
