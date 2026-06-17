import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,

                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,

                      child: IconButton(
                        padding: EdgeInsets.zero,

                        onPressed: () {
                          Navigator.pop(context);
                        },

                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    const Text(
                      'Nova tarefa',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    const CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,

                      child: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                Container(
                  padding: const EdgeInsets.all(16),

                  decoration: BoxDecoration(
                    color: const Color(0xFFEFF6FF),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: const Color(0xFFCBD5E1),
                    ),
                  ),

                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,

                    children: const [
                      Row(
                        children: [
                          Icon(
                            Icons.auto_awesome,
                            size: 18,
                            color: Color(0xFF2563EB),
                          ),

                          SizedBox(width: 8),

                          Text(
                            'Sugestão da IA',
                            style: TextStyle(
                              color: Color(0xFF2563EB),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 8),

                      Text(
                        'Tarefas com horários definidos têm mais chance de serem concluídas.',
                        style: TextStyle(
                          color: Color(0xFF64748B),
                        ),
                      ),

                      SizedBox(height: 8),

                      Text(
                        'Aplicar sugestão →',
                        style: TextStyle(
                          color: Color(0xFF2563EB),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                const Text(
                  'Título da tarefa',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 8),

                TextField(
                  decoration: InputDecoration(
                    hintText: 'Ex: Estudar UX/UI',

                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(12),

                      borderSide: const BorderSide(
                        color: Color(0xFFEF4444),
                        width: 1.5,
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(12),

                      borderSide: const BorderSide(
                        color: Color(0xFFEF4444),
                        width: 2,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                const Row(
                  children: [
                    Icon(
                      Icons.error,
                      color: Color(0xFFEF4444),
                      size: 12,
                    ),

                    SizedBox(width: 4),

                    Text(
                      'Campo obrigatório',
                      style: TextStyle(
                        color: Color(0xFFEF4444),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                const Text(
                  'Descrição',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 8),

                TextField(
                  maxLines: 4,

                  decoration: InputDecoration(
                    hintText:
                        'Adicione detalhes importantes...',

                    filled: true,
                    fillColor: Colors.white,

                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(12),

                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                const Text(
                  'Categoria',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 12),

                Wrap(
                  spacing: 10,
                  runSpacing: 10,

                  children: [
                    _chip(
                      'Estudos',
                      true,
                    ),

                    _chip(
                      'Trabalho',
                      false,
                    ),

                    _chip(
                      'Saúde',
                      false,
                    ),

                    _chip(
                      'Pessoal',
                      false,
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                const Text(
                  'Prioridade',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 12),

                Wrap(
                  spacing: 10,

                  children: [
                    _priorityChip(
                      'Baixa',
                      false,
                      const Color(0xFF94A3B8),
                    ),

                    _priorityChip(
                      'Média',
                      false,
                      const Color(0xFFF59E0B),
                    ),

                    _priorityChip(
                      'Alta',
                      true,
                      const Color(0xFFEF4444),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.calendar_today),

                          hintText: '30/04/2026',

                          filled: true,
                          fillColor: Colors.white,

                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(12),

                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.access_time),

                          hintText: '18:00',

                          filled: true,
                          fillColor: Colors.white,

                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(12),

                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(12),
                  ),

                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Color(0xFFF59E0B),
                          ),

                          SizedBox(width: 8),

                          Text('Ativar lembrete'),
                        ],
                      ),

                      Switch(
                        value: true,
                        onChanged: (_) {},
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(12),
                  ),

                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.g_mobiledata,
                            color: Color(0xFF2563EB),
                          ),

                          SizedBox(width: 8),

                          Text(
                            'Sincronizar com Google Calendar',
                          ),
                        ],
                      ),

                      Switch(
                        value: false,
                        onChanged: (_) {},
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 32),

                SizedBox(
                  width: double.infinity,
                  height: 56,

                  child: ElevatedButton(
                    onPressed: () {},

                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(0xFF2563EB),

                      foregroundColor: Colors.white,
                    ),

                    child: const Text(
                      'Salvar tarefa',
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                SizedBox(
                  width: double.infinity,
                  height: 56,

                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },

                    child: const Text(
                      'Cancelar',
                    ),
                  ),
                ),

                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget _chip(
    String text,
    bool selected,
  ) {
    return Chip(
      label: Text(text),

      backgroundColor: selected
          ? const Color(0xFF2563EB)
          : Colors.white,

      labelStyle: TextStyle(
        color:
            selected ? Colors.white : Colors.black54,
      ),
    );
  }

  static Widget _priorityChip(
    String text,
    bool selected,
    Color color,
  ) {
    return Chip(
      label: Text(text),

      backgroundColor:
          selected ? color : Colors.white,

      labelStyle: TextStyle(
        color:
            selected ? Colors.white : Colors.black54,
      ),
    );
  }
}