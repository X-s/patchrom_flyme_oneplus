.class final Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
.super Lcom/oneplus/base/ListHandlerBaseObject;
.source "MediaManagerImpl.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaSetList;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSetListImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/base/ListHandlerBaseObject",
        "<",
        "Lcom/oneplus/gallery/media/MediaSet;",
        ">;",
        "Lcom/oneplus/gallery/media/MediaSetList;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oneplus/gallery/media/MediaSet;",
        ">;"
    }
.end annotation


# instance fields
.field private final m_DateMediaAddedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final m_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final m_TargetMediaType:Lcom/oneplus/gallery/media/MediaType;

.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaType;)V
    .locals 2
    .param p2, "targetMediaType"    # Lcom/oneplus/gallery/media/MediaType;

    .prologue
    .line 990
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-direct {p0}, Lcom/oneplus/base/ListHandlerBaseObject;-><init>()V

    .line 977
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    .line 979
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl$1;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_DateMediaAddedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 991
    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_TargetMediaType:Lcom/oneplus/gallery/media/MediaType;

    .line 992
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 993
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->PROP_COMPARATOR:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/gallery/media/MediaSetList$Comparator;->SYSTEM_DATE:Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 994
    return-void
.end method

.method static synthetic access$2200(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 974
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->onDateMediaAdded(Lcom/oneplus/gallery/media/MediaSet;)V

    return-void
.end method

.method private compareSystemAlbumDirectory(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaSet;)I
    .locals 13
    .param p1, "lhs"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "rhs"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 1052
    invoke-interface {p1}, Lcom/oneplus/gallery/media/MediaSet;->getType()Lcom/oneplus/gallery/media/MediaSet$Type;

    move-result-object v9

    invoke-virtual {v9}, Lcom/oneplus/gallery/media/MediaSet$Type;->ordinal()I

    move-result v9

    invoke-interface {p2}, Lcom/oneplus/gallery/media/MediaSet;->getType()Lcom/oneplus/gallery/media/MediaSet$Type;

    move-result-object v12

    invoke-virtual {v12}, Lcom/oneplus/gallery/media/MediaSet$Type;->ordinal()I

    move-result v12

    sub-int v8, v9, v12

    .line 1053
    .local v8, "result":I
    if-eqz v8, :cond_0

    move v9, v8

    .line 1093
    :goto_0
    return v9

    .line 1057
    :cond_0
    invoke-interface {p1}, Lcom/oneplus/gallery/media/MediaSet;->getType()Lcom/oneplus/gallery/media/MediaSet$Type;

    move-result-object v9

    sget-object v12, Lcom/oneplus/gallery/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

    if-ne v9, v12, :cond_3

    .line 1059
    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->SYSTEM_MEDIA_SET_PRIORITIES:Ljava/util/List;
    invoke-static {}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$2300()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1060
    .local v6, "priorityL":I
    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->SYSTEM_MEDIA_SET_PRIORITIES:Ljava/util/List;
    invoke-static {}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$2300()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1061
    .local v7, "priorityR":I
    if-ltz v6, :cond_2

    .line 1063
    if-ltz v7, :cond_1

    .line 1064
    sub-int v9, v6, v7

    goto :goto_0

    :cond_1
    move v9, v10

    .line 1065
    goto :goto_0

    .line 1067
    :cond_2
    if-ltz v7, :cond_5

    move v9, v11

    .line 1068
    goto :goto_0

    .line 1070
    .end local v6    # "priorityL":I
    .end local v7    # "priorityR":I
    :cond_3
    invoke-interface {p1}, Lcom/oneplus/gallery/media/MediaSet;->getType()Lcom/oneplus/gallery/media/MediaSet$Type;

    move-result-object v9

    sget-object v12, Lcom/oneplus/gallery/media/MediaSet$Type;->USER:Lcom/oneplus/gallery/media/MediaSet$Type;

    if-ne v9, v12, :cond_5

    move-object v9, p1

    .line 1072
    check-cast v9, Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-virtual {v9}, Lcom/oneplus/gallery/media/AlbumMediaSet;->getDateAdded()J

    move-result-wide v0

    .local v0, "dateAddedL":J
    move-object v9, p2

    .line 1073
    check-cast v9, Lcom/oneplus/gallery/media/AlbumMediaSet;

    invoke-virtual {v9}, Lcom/oneplus/gallery/media/AlbumMediaSet;->getDateAdded()J

    move-result-wide v2

    .line 1074
    .local v2, "dateAddedR":J
    cmp-long v9, v0, v2

    if-lez v9, :cond_4

    move v9, v11

    .line 1075
    goto :goto_0

    .line 1076
    :cond_4
    cmp-long v9, v0, v2

    if-gez v9, :cond_5

    move v9, v10

    .line 1077
    goto :goto_0

    .line 1081
    .end local v0    # "dateAddedL":J
    .end local v2    # "dateAddedR":J
    :cond_5
    sget-object v9, Lcom/oneplus/gallery/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v9}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1082
    .local v4, "nameL":Ljava/lang/String;
    sget-object v9, Lcom/oneplus/gallery/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p2, v9}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1083
    .local v5, "nameR":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 1085
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    .line 1086
    if-nez v8, :cond_6

    .line 1087
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Integer;->compare(II)I

    move-result v9

    goto :goto_0

    :cond_6
    move v9, v8

    .line 1089
    goto :goto_0

    .line 1091
    :cond_7
    if-eqz v5, :cond_8

    move v9, v11

    .line 1092
    goto :goto_0

    .line 1093
    :cond_8
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private compareSystemDate(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaSet;)I
    .locals 12
    .param p1, "lhs"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "rhs"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    const/4 v8, -0x1

    const/4 v10, 0x1

    .line 1099
    invoke-interface {p1}, Lcom/oneplus/gallery/media/MediaSet;->getType()Lcom/oneplus/gallery/media/MediaSet$Type;

    move-result-object v9

    sget-object v11, Lcom/oneplus/gallery/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

    if-ne v9, v11, :cond_2

    invoke-interface {p2}, Lcom/oneplus/gallery/media/MediaSet;->getType()Lcom/oneplus/gallery/media/MediaSet$Type;

    move-result-object v9

    sget-object v11, Lcom/oneplus/gallery/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

    if-ne v9, v11, :cond_2

    .line 1101
    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->SYSTEM_MEDIA_SET_PRIORITIES:Ljava/util/List;
    invoke-static {}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$2300()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1102
    .local v6, "priorityL":I
    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->SYSTEM_MEDIA_SET_PRIORITIES:Ljava/util/List;
    invoke-static {}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$2300()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1103
    .local v7, "priorityR":I
    if-ltz v6, :cond_1

    .line 1105
    if-ltz v7, :cond_0

    .line 1106
    sub-int v8, v6, v7

    .line 1140
    .end local v6    # "priorityL":I
    .end local v7    # "priorityR":I
    :cond_0
    :goto_0
    return v8

    .line 1109
    .restart local v6    # "priorityL":I
    .restart local v7    # "priorityR":I
    :cond_1
    if-ltz v7, :cond_4

    move v8, v10

    .line 1110
    goto :goto_0

    .line 1112
    .end local v6    # "priorityL":I
    .end local v7    # "priorityR":I
    :cond_2
    invoke-interface {p1}, Lcom/oneplus/gallery/media/MediaSet;->getType()Lcom/oneplus/gallery/media/MediaSet$Type;

    move-result-object v9

    sget-object v11, Lcom/oneplus/gallery/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

    if-eq v9, v11, :cond_0

    .line 1114
    invoke-interface {p2}, Lcom/oneplus/gallery/media/MediaSet;->getType()Lcom/oneplus/gallery/media/MediaSet$Type;

    move-result-object v9

    sget-object v11, Lcom/oneplus/gallery/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

    if-ne v9, v11, :cond_3

    move v8, v10

    .line 1115
    goto :goto_0

    .line 1119
    :cond_3
    sget-object v9, Lcom/oneplus/gallery/media/MediaSet;->PROP_DATE_MEDIA_ADDED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v9}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1120
    .local v0, "modifiedDateL":J
    sget-object v9, Lcom/oneplus/gallery/media/MediaSet;->PROP_DATE_MEDIA_ADDED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p2, v9}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1121
    .local v2, "modifiedDateR":J
    cmp-long v9, v0, v2

    if-gtz v9, :cond_0

    .line 1123
    cmp-long v9, v0, v2

    if-gez v9, :cond_4

    move v8, v10

    .line 1124
    goto :goto_0

    .line 1128
    .end local v0    # "modifiedDateL":J
    .end local v2    # "modifiedDateR":J
    :cond_4
    sget-object v9, Lcom/oneplus/gallery/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v9}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1129
    .local v4, "nameL":Ljava/lang/String;
    sget-object v9, Lcom/oneplus/gallery/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p2, v9}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1130
    .local v5, "nameR":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 1132
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    .line 1133
    .local v8, "result":I
    if-nez v8, :cond_0

    .line 1134
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Integer;->compare(II)I

    move-result v8

    goto :goto_0

    .line 1138
    .end local v8    # "result":I
    :cond_5
    if-eqz v5, :cond_6

    move v8, v10

    .line 1139
    goto :goto_0

    .line 1140
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Integer;->compare(II)I

    move-result v8

    goto :goto_0
.end method

.method private compareSystemName(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaSet;)I
    .locals 8
    .param p1, "lhs"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "rhs"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 1146
    invoke-interface {p1}, Lcom/oneplus/gallery/media/MediaSet;->getType()Lcom/oneplus/gallery/media/MediaSet$Type;

    move-result-object v6

    sget-object v7, Lcom/oneplus/gallery/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

    if-ne v6, v7, :cond_2

    invoke-interface {p2}, Lcom/oneplus/gallery/media/MediaSet;->getType()Lcom/oneplus/gallery/media/MediaSet$Type;

    move-result-object v6

    sget-object v7, Lcom/oneplus/gallery/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

    if-ne v6, v7, :cond_2

    .line 1148
    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->SYSTEM_MEDIA_SET_PRIORITIES:Ljava/util/List;
    invoke-static {}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$2300()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1149
    .local v2, "priorityL":I
    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->SYSTEM_MEDIA_SET_PRIORITIES:Ljava/util/List;
    invoke-static {}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$2300()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1150
    .local v3, "priorityR":I
    if-ltz v2, :cond_1

    .line 1152
    if-ltz v3, :cond_0

    .line 1153
    sub-int v4, v2, v3

    .line 1177
    .end local v2    # "priorityL":I
    .end local v3    # "priorityR":I
    :cond_0
    :goto_0
    return v4

    .line 1156
    .restart local v2    # "priorityL":I
    .restart local v3    # "priorityR":I
    :cond_1
    if-ltz v3, :cond_3

    move v4, v5

    .line 1157
    goto :goto_0

    .line 1159
    .end local v2    # "priorityL":I
    .end local v3    # "priorityR":I
    :cond_2
    invoke-interface {p1}, Lcom/oneplus/gallery/media/MediaSet;->getType()Lcom/oneplus/gallery/media/MediaSet$Type;

    move-result-object v6

    sget-object v7, Lcom/oneplus/gallery/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

    if-eq v6, v7, :cond_0

    .line 1161
    invoke-interface {p2}, Lcom/oneplus/gallery/media/MediaSet;->getType()Lcom/oneplus/gallery/media/MediaSet$Type;

    move-result-object v6

    sget-object v7, Lcom/oneplus/gallery/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

    if-ne v6, v7, :cond_3

    move v4, v5

    .line 1162
    goto :goto_0

    .line 1165
    :cond_3
    sget-object v6, Lcom/oneplus/gallery/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v6}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1166
    .local v0, "nameL":Ljava/lang/String;
    sget-object v6, Lcom/oneplus/gallery/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p2, v6}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1167
    .local v1, "nameR":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 1169
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 1170
    .local v4, "result":I
    if-nez v4, :cond_0

    .line 1171
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Integer;->compare(II)I

    move-result v4

    goto :goto_0

    .line 1175
    .end local v4    # "result":I
    :cond_4
    if-eqz v1, :cond_5

    move v4, v5

    .line 1176
    goto :goto_0

    .line 1177
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Integer;->compare(II)I

    move-result v4

    goto :goto_0
.end method

.method private onDateMediaAdded(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 4
    .param p1, "set"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 1203
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1204
    .local v2, "oldIndex":I
    if-gez v2, :cond_1

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1209
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-static {v3, p1, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 1210
    .local v1, "newIndex":I
    if-gez v1, :cond_0

    .line 1212
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1213
    xor-int/lit8 v1, v1, -0x1

    .line 1214
    if-eq v1, v2, :cond_0

    .line 1218
    new-instance v0, Lcom/oneplus/gallery/ListMoveEventArgs;

    invoke-direct {v0, v2, v2, v1, v1}, Lcom/oneplus/gallery/ListMoveEventArgs;-><init>(IIII)V

    .line 1219
    .local v0, "e":Lcom/oneplus/gallery/ListMoveEventArgs;
    sget-object v3, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->EVENT_MEDIA_SET_MOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v3, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1220
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1221
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-interface {v3, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1222
    sget-object v3, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->EVENT_MEDIA_SET_MOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v3, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0
.end method

.method private setComparatorProp(Lcom/oneplus/gallery/media/MediaSetList$Comparator;)Z
    .locals 4
    .param p1, "value"    # Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    .prologue
    const/4 v2, 0x0

    .line 1271
    sget-object v3, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->PROP_COMPARATOR:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v3, p1}, Lcom/oneplus/base/ListHandlerBaseObject;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1273
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1274
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/MediaSet;>;"
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->clearMediaSetList()V

    .line 1275
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1276
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-static {v3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1277
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v0

    .line 1278
    .local v0, "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    sget-object v2, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1279
    invoke-virtual {v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 1280
    const/4 v2, 0x1

    .line 1282
    .end local v0    # "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/MediaSet;>;"
    :cond_0
    return v2
.end method


# virtual methods
.method public addMediaSet(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 4
    .param p1, "set"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 999
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-static {v2, p1, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 1000
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 1011
    :goto_0
    return-void

    .line 1002
    :cond_0
    instance-of v2, p1, Lcom/oneplus/gallery/media/CameraRollMediaSet;

    if-eqz v2, :cond_1

    .line 1003
    sget-object v2, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->PROP_CONTAINS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1004
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->ready()V

    .line 1005
    sget-object v2, Lcom/oneplus/gallery/media/MediaSet;->PROP_DATE_MEDIA_ADDED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_DateMediaAddedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v2, v3}, Lcom/oneplus/gallery/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1006
    xor-int/lit8 v1, v1, -0x1

    .line 1007
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1008
    invoke-static {v1}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v0

    .line 1009
    .local v0, "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    sget-object v2, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1010
    invoke-virtual {v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    goto :goto_0
.end method

.method public clearMediaSetList()V
    .locals 6

    .prologue
    .line 1016
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1017
    .local v2, "size":I
    if-lez v2, :cond_1

    .line 1019
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1020
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/MediaSet;

    sget-object v4, Lcom/oneplus/gallery/media/MediaSet;->PROP_DATE_MEDIA_ADDED:Lcom/oneplus/base/PropertyKey;

    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_DateMediaAddedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v3, v4, v5}, Lcom/oneplus/gallery/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1019
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1021
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1022
    const/4 v3, 0x0

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(II)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v0

    .line 1023
    .local v0, "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    sget-object v3, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v3, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1024
    invoke-virtual {v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 1026
    .end local v0    # "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public compare(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaSet;)I
    .locals 3
    .param p1, "lhs"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "rhs"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 1033
    sget-object v1, Lcom/oneplus/gallery/media/MediaSetList;->PROP_COMPARATOR:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    .line 1034
    .local v0, "comparator":Lcom/oneplus/gallery/media/MediaSetList$Comparator;
    sget-object v1, Lcom/oneplus/gallery/media/MediaManagerImpl$37;->$SwitchMap$com$oneplus$gallery$media$MediaSetList$Comparator:[I

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/MediaSetList$Comparator;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1045
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    :goto_0
    return v1

    .line 1037
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->compareSystemAlbumDirectory(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaSet;)I

    move-result v1

    goto :goto_0

    .line 1040
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->compareSystemDate(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaSet;)I

    move-result v1

    goto :goto_0

    .line 1043
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->compareSystemName(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaSet;)I

    move-result v1

    goto :goto_0

    .line 1034
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 974
    check-cast p1, Lcom/oneplus/gallery/media/MediaSet;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oneplus/gallery/media/MediaSet;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->compare(Lcom/oneplus/gallery/media/MediaSet;Lcom/oneplus/gallery/media/MediaSet;)I

    move-result v0

    return v0
.end method

.method public get(I)Lcom/oneplus/gallery/media/MediaSet;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaSet;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 974
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->get(I)Lcom/oneplus/gallery/media/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method public getTargetMediaType()Lcom/oneplus/gallery/media/MediaType;
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_TargetMediaType:Lcom/oneplus/gallery/media/MediaType;

    return-object v0
.end method

.method public notifyCameraRollVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 1196
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->PROP_CONTAINS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1197
    return-void
.end method

.method public ready()V
    .locals 2

    .prologue
    .line 1228
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->PROP_IS_READY:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1229
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 1235
    invoke-super {p0}, Lcom/oneplus/base/ListHandlerBaseObject;->release()V

    .line 1236
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->clearMediaSetList()V

    .line 1237
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->onMediaSetListReleased(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$2400(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;)V

    .line 1238
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->PROP_CONTAINS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1239
    return-void
.end method

.method public removeMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Z
    .locals 4
    .param p1, "set"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    const/4 v2, 0x0

    .line 1244
    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-static {v3, p1, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 1245
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 1256
    :goto_0
    return v2

    .line 1247
    :cond_0
    instance-of v3, p1, Lcom/oneplus/gallery/media/CameraRollMediaSet;

    if-eqz v3, :cond_1

    .line 1248
    sget-object v3, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->PROP_CONTAINS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1249
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->ready()V

    .line 1250
    sget-object v2, Lcom/oneplus/gallery/media/MediaSet;->PROP_DATE_MEDIA_ADDED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_DateMediaAddedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v2, v3}, Lcom/oneplus/gallery/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1251
    invoke-static {v1}, Lcom/oneplus/gallery/ListChangeEventArgs;->obtain(I)Lcom/oneplus/gallery/ListChangeEventArgs;

    move-result-object v0

    .line 1252
    .local v0, "e":Lcom/oneplus/gallery/ListChangeEventArgs;
    sget-object v2, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1253
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1254
    sget-object v2, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 1255
    invoke-virtual {v0}, Lcom/oneplus/gallery/ListChangeEventArgs;->recycle()V

    .line 1256
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 1263
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->PROP_COMPARATOR:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 1264
    check-cast p2, Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->setComparatorProp(Lcom/oneplus/gallery/media/MediaSetList$Comparator;)Z

    move-result v0

    .line 1265
    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/ListHandlerBaseObject;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaSetListImpl;->m_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
