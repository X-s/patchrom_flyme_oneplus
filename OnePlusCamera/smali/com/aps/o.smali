.class public Lcom/aps/o;
.super Ljava/lang/Object;
.source "Req.java"


# instance fields
.field public A:[B

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public b:S

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "1"

    iput-object v0, p0, Lcom/aps/o;->a:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/aps/o;->b:S

    .line 20
    iput-object v1, p0, Lcom/aps/o;->c:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/aps/o;->d:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/aps/o;->e:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/aps/o;->f:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/aps/o;->g:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/aps/o;->h:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/aps/o;->i:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/aps/o;->j:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/aps/o;->k:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/aps/o;->l:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/aps/o;->m:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/aps/o;->n:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/aps/o;->o:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/aps/o;->p:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/aps/o;->q:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/aps/o;->r:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/aps/o;->s:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/aps/o;->t:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/aps/o;->u:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/aps/o;->v:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/aps/o;->w:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/aps/o;->x:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/aps/o;->y:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/aps/o;->z:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/aps/o;->A:[B

    .line 47
    iput-object v1, p0, Lcom/aps/o;->B:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/aps/o;->C:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/aps/o;->D:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/aps/o;->E:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/aps/o;->w:Ljava/lang/String;

    const-string v1, "\\*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 892
    aget-object v0, v0, p2

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 893
    const-string v1, "lac"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 900
    :goto_0
    return-object v0

    .line 895
    :cond_0
    const-string v1, "cellid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 896
    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 897
    :cond_1
    const-string v1, "signal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 898
    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 900
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x6

    const/4 v1, 0x0

    .line 844
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 845
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eq v2, v4, :cond_2

    .line 849
    :cond_0
    new-array v2, v4, [Ljava/lang/String;

    move v0, v1

    .line 850
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 851
    const-string v3, "0"

    aput-object v3, v2, v0

    .line 850
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 854
    :cond_2
    new-array v3, v4, [B

    move v2, v1

    .line 855
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_4

    .line 856
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 860
    aget-object v4, v0, v2

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 862
    :cond_3
    aget-object v4, v0, v2

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 863
    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 855
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 865
    :cond_4
    return-object v3
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 875
    iget-object v0, p0, Lcom/aps/o;->v:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
    const-string v0, "0"

    .line 880
    :goto_0
    return-object v0

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/aps/o;->v:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 879
    iget-object v1, p0, Lcom/aps/o;->v:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 880
    iget-object v2, p0, Lcom/aps/o;->v:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 912
    iget-object v0, p0, Lcom/aps/o;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->a:Ljava/lang/String;

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/aps/o;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->c:Ljava/lang/String;

    .line 918
    :cond_1
    iget-object v0, p0, Lcom/aps/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 919
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->d:Ljava/lang/String;

    .line 921
    :cond_2
    iget-object v0, p0, Lcom/aps/o;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 922
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->e:Ljava/lang/String;

    .line 924
    :cond_3
    iget-object v0, p0, Lcom/aps/o;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 925
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->f:Ljava/lang/String;

    .line 927
    :cond_4
    iget-object v0, p0, Lcom/aps/o;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 928
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->g:Ljava/lang/String;

    .line 930
    :cond_5
    iget-object v0, p0, Lcom/aps/o;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 931
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->h:Ljava/lang/String;

    .line 933
    :cond_6
    iget-object v0, p0, Lcom/aps/o;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 934
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->i:Ljava/lang/String;

    .line 936
    :cond_7
    iget-object v0, p0, Lcom/aps/o;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 937
    const-string v0, "0"

    iput-object v0, p0, Lcom/aps/o;->j:Ljava/lang/String;

    .line 941
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/aps/o;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 942
    const-string v0, "0"

    iput-object v0, p0, Lcom/aps/o;->D:Ljava/lang/String;

    .line 946
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/aps/o;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 947
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->k:Ljava/lang/String;

    .line 955
    :goto_2
    iget-object v0, p0, Lcom/aps/o;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 956
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->l:Ljava/lang/String;

    .line 961
    :goto_3
    iget-object v0, p0, Lcom/aps/o;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 962
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->m:Ljava/lang/String;

    .line 964
    :cond_a
    iget-object v0, p0, Lcom/aps/o;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 965
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->n:Ljava/lang/String;

    .line 967
    :cond_b
    iget-object v0, p0, Lcom/aps/o;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 968
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->o:Ljava/lang/String;

    .line 970
    :cond_c
    iget-object v0, p0, Lcom/aps/o;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 971
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->p:Ljava/lang/String;

    .line 973
    :cond_d
    iget-object v0, p0, Lcom/aps/o;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 974
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->q:Ljava/lang/String;

    .line 976
    :cond_e
    iget-object v0, p0, Lcom/aps/o;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 977
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->r:Ljava/lang/String;

    .line 979
    :cond_f
    iget-object v0, p0, Lcom/aps/o;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 980
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->B:Ljava/lang/String;

    .line 982
    :cond_10
    iget-object v0, p0, Lcom/aps/o;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 983
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->C:Ljava/lang/String;

    .line 985
    :cond_11
    iget-object v0, p0, Lcom/aps/o;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 986
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->s:Ljava/lang/String;

    .line 988
    :cond_12
    iget-object v0, p0, Lcom/aps/o;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 989
    const-string v0, "0"

    iput-object v0, p0, Lcom/aps/o;->t:Ljava/lang/String;

    .line 993
    :cond_13
    :goto_4
    iget-object v0, p0, Lcom/aps/o;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 994
    const-string v0, "0"

    iput-object v0, p0, Lcom/aps/o;->u:Ljava/lang/String;

    .line 998
    :cond_14
    :goto_5
    iget-object v0, p0, Lcom/aps/o;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 999
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->v:Ljava/lang/String;

    .line 1001
    :cond_15
    iget-object v0, p0, Lcom/aps/o;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1002
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->w:Ljava/lang/String;

    .line 1004
    :cond_16
    iget-object v0, p0, Lcom/aps/o;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1005
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->x:Ljava/lang/String;

    .line 1007
    :cond_17
    iget-object v0, p0, Lcom/aps/o;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1008
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->y:Ljava/lang/String;

    .line 1010
    :cond_18
    iget-object v0, p0, Lcom/aps/o;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1011
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->E:Ljava/lang/String;

    .line 1013
    :cond_19
    iget-object v0, p0, Lcom/aps/o;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1014
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o;->z:Ljava/lang/String;

    .line 1016
    :cond_1a
    iget-object v0, p0, Lcom/aps/o;->A:[B

    if-nez v0, :cond_1b

    .line 1017
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/aps/o;->A:[B

    .line 1019
    :cond_1b
    return-void

    .line 938
    :cond_1c
    iget-object v0, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 939
    const-string v0, "0"

    iput-object v0, p0, Lcom/aps/o;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 943
    :cond_1d
    iget-object v0, p0, Lcom/aps/o;->D:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/aps/o;->D:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 944
    const-string v0, "0"

    iput-object v0, p0, Lcom/aps/o;->D:Ljava/lang/String;

    goto/16 :goto_1

    .line 952
    :cond_1e
    iget-object v0, p0, Lcom/aps/o;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x41324f8000000000L    # 1200000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 953
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/o;->k:Ljava/lang/String;

    goto/16 :goto_2

    .line 958
    :cond_1f
    iget-object v0, p0, Lcom/aps/o;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 959
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/o;->l:Ljava/lang/String;

    goto/16 :goto_3

    .line 990
    :cond_20
    iget-object v0, p0, Lcom/aps/o;->t:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/aps/o;->t:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 991
    const-string v0, "0"

    iput-object v0, p0, Lcom/aps/o;->t:Ljava/lang/String;

    goto/16 :goto_4

    .line 995
    :cond_21
    iget-object v0, p0, Lcom/aps/o;->u:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/aps/o;->u:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 996
    const-string v0, "0"

    iput-object v0, p0, Lcom/aps/o;->u:Ljava/lang/String;

    goto/16 :goto_5
.end method


# virtual methods
.method public a()[B
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/16 v10, -0x80

    const/16 v9, 0x7f

    const/4 v1, 0x0

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/aps/o;->b()V

    .line 99
    const/16 v0, 0xc00

    .line 100
    iget-object v2, p0, Lcom/aps/o;->A:[B

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/aps/o;->A:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 103
    :cond_0
    new-array v4, v0, [B

    .line 108
    iget-object v0, p0, Lcom/aps/o;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v4, v1

    .line 113
    iget-short v0, p0, Lcom/aps/o;->b:S

    invoke-static {v0}, Lcom/aps/q;->b(I)[B

    move-result-object v0

    .line 114
    array-length v2, v0

    invoke-static {v0, v1, v4, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/aps/o;->c:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 122
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    .line 124
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    array-length v2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    .line 138
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/aps/o;->d:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 139
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    .line 141
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    array-length v2, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v0, v2

    .line 155
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/aps/o;->n:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 156
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 158
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    array-length v2, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/2addr v0, v2

    .line 172
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/aps/o;->e:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 173
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    .line 175
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    array-length v2, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    add-int/2addr v0, v2

    .line 189
    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/aps/o;->f:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 190
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    .line 192
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    array-length v2, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    add-int/2addr v0, v2

    .line 206
    :goto_4
    :try_start_5
    iget-object v2, p0, Lcom/aps/o;->g:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 207
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 208
    add-int/lit8 v0, v0, 0x1

    .line 209
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    array-length v2, v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    add-int/2addr v0, v2

    .line 223
    :goto_5
    :try_start_6
    iget-object v2, p0, Lcom/aps/o;->r:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 224
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    .line 226
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    array-length v2, v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    add-int/2addr v0, v2

    .line 240
    :goto_6
    :try_start_7
    iget-object v2, p0, Lcom/aps/o;->h:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 241
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    .line 243
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    array-length v2, v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    add-int/2addr v0, v2

    .line 257
    :goto_7
    :try_start_8
    iget-object v2, p0, Lcom/aps/o;->o:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 258
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    .line 260
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    array-length v2, v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    add-int/2addr v0, v2

    .line 274
    :goto_8
    :try_start_9
    iget-object v2, p0, Lcom/aps/o;->p:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 275
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 276
    add-int/lit8 v0, v0, 0x1

    .line 277
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    array-length v2, v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    add-int/2addr v0, v2

    .line 290
    :goto_9
    iget-object v2, p0, Lcom/aps/o;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 291
    aput-byte v1, v4, v0

    .line 292
    add-int/lit8 v0, v0, 0x1

    .line 308
    :goto_a
    :try_start_a
    iget-object v2, p0, Lcom/aps/o;->B:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 309
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 310
    add-int/lit8 v0, v0, 0x1

    .line 311
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    array-length v2, v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    add-int/2addr v0, v2

    .line 325
    :goto_b
    :try_start_b
    iget-object v2, p0, Lcom/aps/o;->C:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 326
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 327
    add-int/lit8 v0, v0, 0x1

    .line 328
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    array-length v2, v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    add-int/2addr v0, v2

    .line 345
    :goto_c
    :try_start_c
    iget-object v2, p0, Lcom/aps/o;->s:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 346
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 347
    add-int/lit8 v0, v0, 0x1

    .line 348
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    array-length v2, v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    add-int/2addr v0, v2

    .line 361
    :goto_d
    iget-object v2, p0, Lcom/aps/o;->t:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    .line 362
    add-int/lit8 v0, v0, 0x1

    .line 366
    iget-object v2, p0, Lcom/aps/o;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    .line 367
    add-int/lit8 v0, v0, 0x1

    .line 371
    iget-object v2, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    iget-object v2, p0, Lcom/aps/o;->D:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    .line 373
    add-int/lit8 v0, v0, 0x1

    .line 384
    :cond_1
    iget-object v2, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 385
    :cond_2
    iget-object v2, p0, Lcom/aps/o;->k:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/aps/q;->a(I)[B

    move-result-object v2

    .line 386
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    array-length v2, v2

    add-int/2addr v0, v2

    .line 393
    :cond_3
    iget-object v2, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 394
    :cond_4
    iget-object v2, p0, Lcom/aps/o;->l:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/aps/q;->a(I)[B

    move-result-object v2

    .line 395
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    array-length v2, v2

    add-int/2addr v0, v2

    .line 402
    :cond_5
    iget-object v2, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/aps/o;->j:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 403
    :cond_6
    iget-object v2, p0, Lcom/aps/o;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 404
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    array-length v2, v2

    add-int/2addr v0, v2

    .line 411
    :cond_7
    iget-object v2, p0, Lcom/aps/o;->u:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    .line 412
    add-int/lit8 v0, v0, 0x1

    .line 413
    iget-object v2, p0, Lcom/aps/o;->u:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 420
    const-string v2, "mcc"

    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 429
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    array-length v2, v2

    add-int/2addr v0, v2

    .line 435
    const-string v2, "mnc"

    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 436
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    array-length v2, v2

    add-int/2addr v0, v2

    .line 442
    const-string v2, "lac"

    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 443
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    array-length v2, v2

    add-int/2addr v0, v2

    .line 449
    const-string v2, "cellid"

    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 450
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    array-length v2, v2

    add-int/2addr v2, v0

    .line 459
    const-string v0, "signal"

    invoke-direct {p0, v0}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 460
    if-le v0, v9, :cond_f

    move v0, v1

    .line 465
    :cond_8
    :goto_e
    int-to-byte v0, v0

    aput-byte v0, v4, v2

    .line 466
    add-int/lit8 v0, v2, 0x1

    .line 470
    iget-object v2, p0, Lcom/aps/o;->w:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    .line 471
    aput-byte v1, v4, v0

    .line 472
    add-int/lit8 v0, v0, 0x1

    .line 577
    :cond_9
    :goto_f
    iget-object v2, p0, Lcom/aps/o;->x:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    .line 578
    aput-byte v1, v4, v0

    .line 579
    add-int/lit8 v0, v0, 0x1

    .line 647
    :goto_10
    iget-object v2, p0, Lcom/aps/o;->y:Ljava/lang/String;

    const-string v3, "\\*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 648
    iget-object v2, p0, Lcom/aps/o;->y:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    array-length v2, v5

    if-nez v2, :cond_19

    .line 649
    :cond_a
    aput-byte v1, v4, v0

    .line 650
    add-int/lit8 v0, v0, 0x1

    .line 717
    :cond_b
    :goto_11
    :try_start_d
    iget-object v2, p0, Lcom/aps/o;->z:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 718
    array-length v3, v2

    if-le v3, v9, :cond_c

    .line 719
    const/4 v2, 0x0

    .line 721
    :cond_c
    if-nez v2, :cond_1d

    .line 725
    const/4 v2, 0x0

    aput-byte v2, v4, v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10

    .line 726
    add-int/lit8 v0, v0, 0x1

    .line 745
    :goto_12
    iget-object v2, p0, Lcom/aps/o;->A:[B

    if-eqz v2, :cond_1e

    .line 746
    iget-object v2, p0, Lcom/aps/o;->A:[B

    array-length v2, v2

    .line 748
    :goto_13
    invoke-static {v2}, Lcom/aps/q;->b(I)[B

    move-result-object v3

    .line 749
    array-length v5, v3

    invoke-static {v3, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 750
    array-length v3, v3

    add-int/2addr v0, v3

    .line 752
    if-lez v2, :cond_d

    .line 753
    iget-object v2, p0, Lcom/aps/o;->A:[B

    iget-object v3, p0, Lcom/aps/o;->A:[B

    array-length v3, v3

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    iget-object v2, p0, Lcom/aps/o;->A:[B

    array-length v2, v2

    add-int/2addr v0, v2

    .line 766
    :cond_d
    new-array v2, v0, [B

    .line 767
    invoke-static {v4, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 772
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 773
    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 774
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    .line 779
    invoke-static {v4, v5}, Lcom/aps/q;->a(J)[B

    move-result-object v3

    .line 780
    array-length v4, v3

    add-int/2addr v4, v0

    new-array v4, v4, [B

    .line 781
    invoke-static {v2, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    array-length v2, v3

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 783
    array-length v1, v3

    add-int/2addr v0, v1

    .line 834
    return-object v4

    .line 127
    :catch_0
    move-exception v2

    .line 131
    aput-byte v1, v4, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 144
    :catch_1
    move-exception v2

    .line 148
    aput-byte v1, v4, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 161
    :catch_2
    move-exception v2

    .line 165
    aput-byte v1, v4, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 178
    :catch_3
    move-exception v2

    .line 182
    aput-byte v1, v4, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 195
    :catch_4
    move-exception v2

    .line 199
    aput-byte v1, v4, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 212
    :catch_5
    move-exception v2

    .line 216
    aput-byte v1, v4, v0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 229
    :catch_6
    move-exception v2

    .line 233
    aput-byte v1, v4, v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 246
    :catch_7
    move-exception v2

    .line 250
    aput-byte v1, v4, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 263
    :catch_8
    move-exception v2

    .line 267
    aput-byte v1, v4, v0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 280
    :catch_9
    move-exception v2

    .line 284
    aput-byte v1, v4, v0

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    .line 294
    :cond_e
    iget-object v2, p0, Lcom/aps/o;->q:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/aps/o;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 295
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 296
    add-int/lit8 v0, v0, 0x1

    .line 297
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    array-length v2, v2

    add-int/2addr v0, v2

    .line 299
    goto/16 :goto_a

    .line 314
    :catch_a
    move-exception v2

    .line 318
    aput-byte v1, v4, v0

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    .line 331
    :catch_b
    move-exception v2

    .line 335
    aput-byte v1, v4, v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    .line 351
    :catch_c
    move-exception v2

    .line 355
    aput-byte v1, v4, v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 462
    :cond_f
    if-ge v0, v10, :cond_8

    move v0, v1

    .line 463
    goto/16 :goto_e

    .line 474
    :cond_10
    iget-object v2, p0, Lcom/aps/o;->w:Ljava/lang/String;

    const-string v3, "\\*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    .line 475
    int-to-byte v2, v5

    aput-byte v2, v4, v0

    .line 476
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .line 477
    :goto_14
    if-ge v2, v5, :cond_9

    .line 481
    const-string v3, "lac"

    invoke-direct {p0, v3, v2}, Lcom/aps/o;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v3

    .line 482
    array-length v6, v3

    invoke-static {v3, v1, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    array-length v3, v3

    add-int/2addr v0, v3

    .line 487
    const-string v3, "cellid"

    invoke-direct {p0, v3, v2}, Lcom/aps/o;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aps/q;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 488
    array-length v6, v3

    invoke-static {v3, v1, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    array-length v3, v3

    add-int/2addr v3, v0

    .line 493
    const-string v0, "signal"

    invoke-direct {p0, v0, v2}, Lcom/aps/o;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 494
    if-le v0, v9, :cond_12

    move v0, v1

    .line 499
    :cond_11
    :goto_15
    int-to-byte v0, v0

    aput-byte v0, v4, v3

    .line 500
    add-int/lit8 v3, v3, 0x1

    .line 477
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_14

    .line 496
    :cond_12
    if-ge v0, v10, :cond_11

    move v0, v1

    .line 497
    goto :goto_15

    .line 503
    :cond_13
    iget-object v2, p0, Lcom/aps/o;->u:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 510
    const-string v2, "mcc"

    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 519
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    array-length v2, v2

    add-int/2addr v0, v2

    .line 525
    const-string v2, "sid"

    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 526
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    array-length v2, v2

    add-int/2addr v0, v2

    .line 532
    const-string v2, "nid"

    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 533
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    array-length v2, v2

    add-int/2addr v0, v2

    .line 539
    const-string v2, "bid"

    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 540
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    array-length v2, v2

    add-int/2addr v0, v2

    .line 546
    const-string v2, "lon"

    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 547
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 548
    array-length v2, v2

    add-int/2addr v0, v2

    .line 553
    const-string v2, "lat"

    invoke-direct {p0, v2}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/q;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 554
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    array-length v2, v2

    add-int/2addr v2, v0

    .line 560
    const-string v0, "signal"

    invoke-direct {p0, v0}, Lcom/aps/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 561
    if-le v0, v9, :cond_15

    move v0, v1

    .line 566
    :cond_14
    :goto_16
    int-to-byte v0, v0

    aput-byte v0, v4, v2

    .line 567
    add-int/lit8 v0, v2, 0x1

    .line 571
    aput-byte v1, v4, v0

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    .line 563
    :cond_15
    if-ge v0, v10, :cond_14

    move v0, v1

    .line 564
    goto :goto_16

    .line 581
    :cond_16
    aput-byte v11, v4, v0

    .line 582
    add-int/lit8 v0, v0, 0x1

    .line 584
    :try_start_e
    iget-object v2, p0, Lcom/aps/o;->x:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 588
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lcom/aps/o;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 589
    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v3, v5, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    array-length v3, v3
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    add-int/2addr v0, v3

    .line 596
    const/4 v3, 0x2

    :try_start_f
    aget-object v3, v2, v3

    const-string v5, "GBK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 597
    array-length v5, v3

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 598
    add-int/lit8 v0, v0, 0x1

    .line 599
    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v3, v5, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    array-length v3, v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_e

    add-int/2addr v0, v3

    .line 612
    :goto_17
    const/4 v3, 0x1

    :try_start_10
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 616
    if-le v2, v9, :cond_18

    move v2, v1

    .line 621
    :cond_17
    :goto_18
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_10

    .line 602
    :catch_d
    move-exception v3

    .line 606
    const/4 v3, 0x0

    aput-byte v3, v4, v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_e

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 618
    :cond_18
    if-ge v2, v10, :cond_17

    move v2, v1

    .line 619
    goto :goto_18

    .line 623
    :catch_e
    move-exception v2

    .line 631
    const-string v2, "00:00:00:00:00:00"

    invoke-direct {p0, v2}, Lcom/aps/o;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 632
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    array-length v2, v2

    add-int/2addr v0, v2

    .line 635
    aput-byte v1, v4, v0

    .line 636
    add-int/lit8 v0, v0, 0x1

    .line 640
    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_10

    .line 652
    :cond_19
    array-length v2, v5

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 653
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    .line 655
    :goto_19
    array-length v2, v5

    if-ge v3, v2, :cond_1c

    .line 656
    aget-object v2, v5, v3

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 660
    aget-object v6, v2, v1

    invoke-direct {p0, v6}, Lcom/aps/o;->a(Ljava/lang/String;)[B

    move-result-object v6

    .line 661
    array-length v7, v6

    invoke-static {v6, v1, v4, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 662
    array-length v6, v6

    add-int/2addr v0, v6

    .line 668
    const/4 v6, 0x2

    :try_start_11
    aget-object v6, v2, v6

    const-string v7, "GBK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 669
    array-length v7, v6

    int-to-byte v7, v7

    aput-byte v7, v4, v0

    .line 670
    add-int/lit8 v0, v0, 0x1

    .line 671
    const/4 v7, 0x0

    array-length v8, v6

    invoke-static {v6, v7, v4, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 672
    array-length v6, v6
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    add-int/2addr v0, v6

    .line 687
    :goto_1a
    aget-object v2, v2, v11

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 688
    if-le v2, v9, :cond_1b

    move v2, v1

    .line 693
    :cond_1a
    :goto_1b
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    .line 694
    add-int/lit8 v2, v0, 0x1

    .line 655
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_19

    .line 674
    :catch_f
    move-exception v6

    .line 678
    aput-byte v1, v4, v0

    .line 679
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 690
    :cond_1b
    if-ge v2, v10, :cond_1a

    move v2, v1

    .line 691
    goto :goto_1b

    .line 702
    :cond_1c
    iget-object v2, p0, Lcom/aps/o;->E:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/aps/o;->E:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 703
    iget-object v2, p0, Lcom/aps/o;->E:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/aps/q;->b(I)[B

    move-result-object v2

    .line 704
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 705
    array-length v2, v2

    add-int/2addr v0, v2

    .line 706
    goto/16 :goto_11

    .line 728
    :cond_1d
    :try_start_12
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 729
    add-int/lit8 v0, v0, 0x1

    .line 730
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 731
    array-length v2, v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    add-int/2addr v0, v2

    goto/16 :goto_12

    .line 734
    :catch_10
    move-exception v2

    .line 738
    aput-byte v1, v4, v0

    .line 739
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    :cond_1e
    move v2, v1

    goto/16 :goto_13
.end method
